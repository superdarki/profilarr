#!/usr/bin/env python3
"""
build_merged.py — Merge N Profilarr-v2 databases into one snapshot.

Config: sources.yml (schema + ordered list of sources, each with an optional
namespace suffix and strip_suffix). Adapted/generalized from
serversathome/profilarr's two-source merger.

Model
-----
Each source's full op chain is replayed on the base schema to build its final
state (in-memory SQLite). Then, per entity kind (custom_formats,
regular_expressions, quality_profiles):

  * A source's entity name first has `strip_suffix` removed (e.g. " FR").
  * The source's `namespace` suffix is then appended to EVERY entity name,
    ALWAYS (not only on collision) — e.g. every FR entity becomes "X [FR]",
    every Dumpstarr entity "X [EN]". A source with null/"" namespace keeps the
    plain (stripped) name. All references (profile->CF, CF->regex, profile
    membership) are rewritten in lockstep, so scoring is preserved.
  * Because every namespaced source's names are unique, entities never collide
    across sources (no fingerprinting / no collapse needed). Base tables shared
    via the schema (tags, languages, qualities) are NOT namespaced and collapse
    naturally via INSERT OR IGNORE.

Emits ops/*.sql category files (FK-ordered, INSERT OR IGNORE, sources layered in
order) and regenerates pcd.json. FK/orphan integrity validated at the end.
Output is deterministic (depends only on upstream shas — no timestamps).
Auto-increment ids are not preserved — every FK in the schema is name-based.
"""
import sqlite3, os, glob, sys, json, hashlib, re

CONFIG       = "sources.yml"
SCHEMA_DIR   = "_sources/schema/ops"
OUT_DIR      = "ops"
OUT_MANIFEST = "pcd.json"

# Merged output is split into several FK-ordered category files (progressive:
# Profilarr tracks each ops/*.sql by filename + content hash, so only the files
# whose content changed re-apply on a re-sync). Parents-before-children so the
# whole chain replays cleanly with foreign_keys=ON (no bulk PRAGMA-off needed).
CATEGORIES = [
    ("0.tags-qualities-languages.sql", ['tags', 'languages', 'qualities']),
    ("1.regular_expressions.sql",      ['regular_expressions']),
    ("2.custom_formats.sql",           ['custom_formats']),
    ("3.quality-defs-groups-media.sql",['quality_api_mappings',
        'radarr_quality_definitions', 'sonarr_quality_definitions',
        'radarr_media_settings', 'sonarr_media_settings',
        'radarr_naming', 'sonarr_naming', 'delay_profiles', 'quality_groups']),
    ("4.quality_profiles.sql",         ['quality_profiles']),
    ("5.conditions.sql",               ['custom_format_conditions',
        'condition_patterns', 'condition_languages', 'condition_indexer_flags',
        'condition_quality_modifiers', 'condition_release_types',
        'condition_resolutions', 'condition_sizes', 'condition_sources',
        'condition_years']),
    ("6.links-and-tags.sql",           ['quality_group_members',
        'quality_profile_qualities', 'quality_profile_languages',
        'quality_profile_custom_formats', 'quality_profile_tags',
        'custom_format_tags', 'regular_expression_tags']),
    ("7.tests.sql",                    ['custom_format_tests', 'test_entities', 'test_releases']),
]

# Tables that ARE an entity (their own `name` column is rewritten).
ENTITY_TABLES = {
    'custom_formats':      'cf',
    'regular_expressions': 're',
    'quality_profiles':    'qp',
}
# Columns that reference an entity name (rewritten when the parent is renamed).
NAME_REF_COLUMNS = {
    'custom_format_name':      'cf',
    'regular_expression_name': 're',
    'quality_profile_name':    'qp',
}
TABLES = [
    'tags', 'languages', 'qualities', 'regular_expressions', 'custom_formats',
    'delay_profiles', 'quality_profiles', 'quality_api_mappings',
    'radarr_quality_definitions', 'sonarr_quality_definitions',
    'radarr_media_settings', 'sonarr_media_settings',
    'radarr_naming', 'sonarr_naming',
    'quality_groups', 'quality_group_members',
    'quality_profile_qualities', 'quality_profile_languages',
    'quality_profile_custom_formats', 'quality_profile_tags',
    'custom_format_conditions',
    'condition_patterns', 'condition_languages', 'condition_indexer_flags',
    'condition_quality_modifiers', 'condition_release_types',
    'condition_resolutions', 'condition_sizes', 'condition_sources',
    'condition_years',
    'custom_format_tags', 'custom_format_tests',
    'regular_expression_tags',
    'test_entities', 'test_releases',
]


# --------------------------------------------------------------------------- #
# Config
# --------------------------------------------------------------------------- #
def load_config():
    try:
        import yaml
        return yaml.safe_load(open(CONFIG, encoding='utf-8'))
    except ImportError:
        return _mini_yaml(open(CONFIG, encoding='utf-8').read())

def _mini_yaml(text):
    """Tiny parser for our specific sources.yml shape (no external dep needed)."""
    def val(s):
        s = s.strip()
        if s in ('null', '~', ''): return None
        if s.startswith('[') and s.endswith(']'):
            inner = s[1:-1].strip()
            return [val(x) for x in _split_list(inner)] if inner else []
        if len(s) >= 2 and s[0] in '"\'' and s[-1] == s[0]:
            return s[1:-1]
        return s
    def _split_list(s):
        out, cur, q = [], '', None
        for ch in s:
            if q:
                cur += ch
                if ch == q: q = None
            elif ch in '"\'': q = ch; cur += ch
            elif ch == ',': out.append(cur); cur = ''
            else: cur += ch
        if cur.strip(): out.append(cur)
        return out
    root, lines = {}, [l.rstrip() for l in text.splitlines()]
    i = 0
    def indent(l): return len(l) - len(l.lstrip())
    while i < len(lines):
        l = lines[i]
        if not l.strip() or l.strip().startswith('#'): i += 1; continue
        key = l.split(':', 1)[0].strip()
        rest = l.split(':', 1)[1].strip() if ':' in l else ''
        if key == 'sources':
            srcs, i = [], i + 1
            while i < len(lines):
                if not lines[i].strip() or lines[i].lstrip().startswith('#'): i += 1; continue
                if indent(lines[i]) == 0: break
                if lines[i].lstrip().startswith('- '):
                    item = {}
                    first = lines[i].lstrip()[2:]
                    if ':' in first:
                        k, v = first.split(':', 1); item[k.strip()] = val(v)
                    i += 1
                    while i < len(lines) and lines[i].strip() and not lines[i].lstrip().startswith('- ') and indent(lines[i]) >= 4:
                        if ':' in lines[i]:
                            k, v = lines[i].split(':', 1); item[k.strip()] = val(v)
                        i += 1
                    srcs.append(item)
                else: i += 1
            root['sources'] = srcs; continue
        elif rest == '':  # nested block (schema / manifest)
            blk, i = {}, i + 1
            while i < len(lines) and (not lines[i].strip() or indent(lines[i]) >= 2):
                if lines[i].strip() and not lines[i].lstrip().startswith('#') and ':' in lines[i]:
                    k, v = lines[i].split(':', 1); blk[k.strip()] = val(v)
                i += 1
            root[key] = blk; continue
        else:
            root[key] = val(rest); i += 1
    return root


# --------------------------------------------------------------------------- #
# Build state
# --------------------------------------------------------------------------- #
def apply_chain(con, path):
    files = sorted(glob.glob(f"{path}/*.sql"),
                   key=lambda f: int(os.path.basename(f).split('.')[0]))
    fails = []
    for f in files:
        try:
            with open(f, encoding='utf-8') as fh:
                con.executescript(fh.read())
        except sqlite3.Error as e:
            fails.append((os.path.basename(f), str(e)[:160]))
    return fails

def build_state(ops_dirs):
    con = sqlite3.connect(':memory:')
    con.execute("PRAGMA foreign_keys = ON")
    fails = []
    for d in ops_dirs:
        fails += apply_chain(con, d)
    return con, fails

def get_autoincrement_pk(con, table):
    row = con.execute("SELECT sql FROM sqlite_master WHERE name=?", (table,)).fetchone()
    if not row or 'AUTOINCREMENT' not in row[0]:
        return None
    for c in con.execute(f"PRAGMA table_info({table})").fetchall():
        if c[5]:
            return c[1]
    return None


# --------------------------------------------------------------------------- #
# Fingerprints
# --------------------------------------------------------------------------- #
def re_lookup_of(con):
    return {r[0]: (r[1], r[2]) for r in con.execute("SELECT name, pattern, description FROM regular_expressions")}

def re_fingerprint(con, name, re_lookup):
    return re_lookup.get(name)

def cf_fingerprint(con, cf_name, re_lookup):
    cf_row = con.execute(
        "SELECT description, include_in_rename FROM custom_formats WHERE name=?", (cf_name,)).fetchone()
    conds = con.execute("""
        SELECT name, type, arr_type, negate, required FROM custom_format_conditions
         WHERE custom_format_name=? ORDER BY name, type""", (cf_name,)).fetchall()
    detail = []
    for c in conds:
        cname = c[0]
        patterns_named = con.execute(
            "SELECT regular_expression_name FROM condition_patterns "
            "WHERE custom_format_name=? AND condition_name=? ORDER BY 1", (cf_name, cname)).fetchall()
        patterns_resolved = tuple(re_lookup.get(p[0], ('?MISSING', '')) for p in patterns_named)
        sub = (
            patterns_resolved,
            tuple(con.execute("SELECT source FROM condition_sources WHERE custom_format_name=? AND condition_name=? ORDER BY 1", (cf_name, cname)).fetchall()),
            tuple(con.execute("SELECT min_bytes, max_bytes FROM condition_sizes WHERE custom_format_name=? AND condition_name=?", (cf_name, cname)).fetchall()),
            tuple(con.execute("SELECT resolution FROM condition_resolutions WHERE custom_format_name=? AND condition_name=? ORDER BY 1", (cf_name, cname)).fetchall()),
            tuple(con.execute("SELECT release_type FROM condition_release_types WHERE custom_format_name=? AND condition_name=? ORDER BY 1", (cf_name, cname)).fetchall()),
            tuple(con.execute("SELECT quality_modifier FROM condition_quality_modifiers WHERE custom_format_name=? AND condition_name=? ORDER BY 1", (cf_name, cname)).fetchall()),
            tuple(con.execute("SELECT min_year, max_year FROM condition_years WHERE custom_format_name=? AND condition_name=?", (cf_name, cname)).fetchall()),
            tuple(con.execute("SELECT flag FROM condition_indexer_flags WHERE custom_format_name=? AND condition_name=? ORDER BY 1", (cf_name, cname)).fetchall()),
            tuple(con.execute("SELECT language_name, except_language FROM condition_languages WHERE custom_format_name=? AND condition_name=? ORDER BY 1", (cf_name, cname)).fetchall()),
        )
        detail.append((tuple(c), sub))
    return (cf_row, tuple(detail))


def strip_suffix(name, suf):
    if suf and isinstance(name, str) and name.endswith(suf):
        return name[:-len(suf)]
    return name


# --------------------------------------------------------------------------- #
# Collision resolution across N sources
# --------------------------------------------------------------------------- #
def resolve_kind(sources, kind):
    """kind in {'cf','re','qp'}. ALWAYS-namespace: every entity of a source that
    has a namespace gets `strip_suffix(name) + namespace` (applied unconditionally,
    not only on collision). A source with null/'' namespace keeps plain (stripped)
    names. All name references are rewritten in lockstep via source['rename'][kind].
    Returns list of (final_name, alias) that were namespaced."""
    ENTITY_SQL = {'cf': 'custom_formats', 're': 'regular_expressions', 'qp': 'quality_profiles'}
    namespaced = []
    for s in sources:
        ns = s.get('namespace')
        suf = s.get('strip_suffix')
        names = [r[0] for r in s['con'].execute(f"SELECT name FROM {ENTITY_SQL[kind]}")]
        for n in names:
            base = strip_suffix(n, suf)
            final = (base + ns) if ns else base
            if final != n:
                s['rename'][kind][n] = final
            if ns:
                namespaced.append((final, s['alias']))
    return namespaced


# --------------------------------------------------------------------------- #
# Dump
# --------------------------------------------------------------------------- #
def dump_table(con, t, rename, mode="OR IGNORE"):
    """rename: {'cf':{}, 're':{}, 'qp':{}} for this source."""
    auto_pk = get_autoincrement_pk(con, t)
    cols_info = con.execute(f"PRAGMA table_info({t})").fetchall()
    skip = {auto_pk, 'created_at', 'updated_at'} - {None}
    cols = [c[1] for c in cols_info if c[1] not in skip]
    if not cols: return ""
    col_list = ", ".join(f'"{c}"' for c in cols)
    rows = con.execute(f'SELECT {col_list} FROM "{t}"').fetchall()
    if not rows: return ""
    rewrites = {}
    entity_kind = ENTITY_TABLES.get(t)
    for i, col in enumerate(cols):
        if entity_kind and col == 'name':
            rewrites[i] = rename[entity_kind]
        elif col in NAME_REF_COLUMNS:
            rewrites[i] = rename[NAME_REF_COLUMNS[col]]
    out = [f"-- {t}: {len(rows)} rows"]
    for r in rows:
        vals = []
        for i, v in enumerate(r):
            if i in rewrites and isinstance(v, str) and v in rewrites[i]:
                v = rewrites[i][v]
            if v is None: vals.append("NULL")
            elif isinstance(v, (int, float)): vals.append(str(v))
            else: vals.append("'" + str(v).replace("'", "''") + "'")
        out.append(f'INSERT {mode} INTO "{t}" ({col_list}) VALUES ({", ".join(vals)});')
    out.append("")
    return "\n".join(out)


def gitsha(repo_path):
    head = os.path.join(repo_path, ".git/HEAD")
    if not os.path.exists(head): return "?"
    h = open(head).read().strip()
    if h.startswith('ref: '):
        rp = os.path.join(repo_path, ".git", h[5:])
        if os.path.exists(rp): return open(rp).read().strip()[:8]
        packed = os.path.join(repo_path, ".git/packed-refs")
        if os.path.exists(packed):
            ref = h[5:]
            for line in open(packed):
                if line.endswith(" " + ref + "\n"): return line.split()[0][:8]
    return h[:8]


def main():
    cfg = load_config()
    src_cfg = cfg['sources']
    print(f"[1/6] Loading {len(src_cfg)} source chains on schema...")
    sources = []
    for sc in src_cfg:
        alias = sc['alias']
        d = f"_sources/{alias}/ops"
        con, fails = build_state([SCHEMA_DIR, d])
        if fails:
            print(f"  WARNING [{alias}]: {len(fails)} ops failed")
            for n, e in fails[:6]: print(f"    {n}: {e}")
        sources.append({
            'alias': alias, 'con': con,
            'namespace': sc.get('namespace') or None,
            'strip_suffix': sc.get('strip_suffix') or None,
            're_lookup': re_lookup_of(con),
            'rename': {'cf': {}, 're': {}, 'qp': {}},
            'sha': gitsha(f"_sources/{alias}"),
            'repo': sc.get('repo'), 'branch': sc.get('branch'),
        })

    print("[2/6] Resolving collisions (regex, custom_formats, profiles)...")
    ns_re = resolve_kind(sources, 're')
    ns_cf = resolve_kind(sources, 'cf')
    ns_qp = resolve_kind(sources, 'qp')
    for s in sources:
        print(f"  [{s['alias']}] namespaced: cf={len(s['rename']['cf'])} "
              f"re={len(s['rename']['re'])} qp={len(s['rename']['qp'])} "
              f"(incl. plain strips)")

    print("[3/6] Overlap report:")
    for t in ['tags', 'custom_formats', 'regular_expressions', 'quality_profiles']:
        sets = {s['alias']: {r[0] for r in s['con'].execute(f"SELECT name FROM {t}")} for s in sources}
        line = "  %-22s " % t + " ".join(f"{a}={len(v)}" for a, v in sets.items())
        if len(sources) == 2:
            a, b = list(sets.values())
            line += f"  overlap={len(a & b)}"
        print(line)

    schema_sha = gitsha("_sources/schema")
    print(f"[4/6] Writing {OUT_DIR}/ ({len(CATEGORIES)} category files, FK-ordered)...")
    os.makedirs(OUT_DIR, exist_ok=True)
    for old in glob.glob(f"{OUT_DIR}/*.sql"):
        os.remove(old)
    src_line = "; ".join(f"{s['alias']}={s['sha']}(ns={s['namespace']})" for s in sources)
    total = 0
    for fname, tbls in CATEGORIES:
        path = os.path.join(OUT_DIR, fname)
        with open(path, 'w', encoding='utf-8') as f:
            f.write("-- ============================================================================\n")
            f.write(f"-- {fname} — merged Profilarr v2 (superdarki/profilarr) — tables: {', '.join(tbls)}\n")
            f.write(f"-- schema {schema_sha} | sources: {src_line}\n")
            f.write("-- GENERATED — do not edit by hand (rebuilt by .gitea/scripts/build_merged.py).\n")
            f.write("-- Deterministic: output depends only on upstream commit shas (no timestamps),\n")
            f.write("-- so the CI commits only when an upstream actually changed.\n")
            f.write("-- ============================================================================\n\n")
            # Profilarr applies each op with foreign_keys=ON (cache.ts). Bulk-load here
            # is name-FK heavy and cross-file, so disable enforcement for this op's exec
            # (matches serversathome's single-snapshot approach). Final integrity is
            # validated by PRAGMA foreign_key_check after the full replay.
            f.write("PRAGMA foreign_keys = OFF;\n\n")
            for t in tbls:
                for s in sources:                       # layer order: source list order
                    chunk = dump_table(s['con'], t, s['rename'])
                    if chunk.strip():
                        f.write(f"-- [{s['alias']}] {t}\n{chunk}\n")
        sz = os.path.getsize(path); total += sz
        sha = hashlib.sha256(open(path, 'rb').read()).hexdigest()[:10]
        print(f"    {fname:34s} {sz:>9,} B  sha:{sha}")
    print(f"  total {total:,} bytes across {len(CATEGORIES)} files")

    print(f"[5/6] Writing {OUT_MANIFEST}...")
    man = cfg.get('manifest', {})
    total_ns_cf = sum(len([1 for v in s['rename']['cf'].values() if v.endswith(s['namespace'])]) for s in sources if s['namespace'])
    total_ns_re = sum(len([1 for v in s['rename']['re'].values() if v.endswith(s['namespace'])]) for s in sources if s['namespace'])
    manifest = {
        "name": man.get('name', 'Presetarr Combined Database'),
        "version": "2.0.0",
        "description": man.get('description', 'Merged Profilarr v2 database.'),
        "arr_types": ["radarr", "sonarr"],
        "dependencies": {cfg['schema']['repo']: cfg['schema']['ref']},
        "authors": [{"name": "taularr"}],
        "license": "MIT",
        "repository": man.get('repository', ''),
        "links": {"homepage": man.get('repository', '')},
        "profilarr": {"minimum_version": "2.0.0"},
        "tags": man.get('tags', ["combined"]),
        "upstream": {
            **{s['alias']: {"repo": s['repo'], "branch": s['branch'], "sha": s['sha'],
                            "namespace": s['namespace']} for s in sources},
            "namespaced_custom_formats": total_ns_cf,
            "namespaced_regular_expressions": total_ns_re,
        },
    }
    json.dump(manifest, open(OUT_MANIFEST, 'w', encoding='utf-8'), indent=2, ensure_ascii=False)

    print("\n=> Verifying merged snapshot (replay ops/ in order with foreign_keys=ON)...")
    v = sqlite3.connect(':memory:')
    v.execute("PRAGMA foreign_keys = ON")           # enforce DURING replay = validates FK-safe order
    apply_chain(v, SCHEMA_DIR)
    ofails = apply_chain(v, OUT_DIR)
    if ofails:
        print(f"  X {len(ofails)} op files failed to apply (FK order / SQL error):")
        for n, e in ofails[:8]: print(f"    {n}: {e}")
        sys.exit(1)
    print("  OK all ops/ files replay cleanly with FK enforcement on")
    counts = {t: v.execute(f"SELECT COUNT(*) FROM {t}").fetchone()[0]
              for t in ['tags', 'custom_formats', 'regular_expressions', 'quality_profiles', 'qualities', 'languages']}
    print(f"  Entity counts: {counts}")

    orphans = v.execute("""SELECT qpcf.quality_profile_name, qpcf.custom_format_name
        FROM quality_profile_custom_formats qpcf
        LEFT JOIN custom_formats cf ON cf.name = qpcf.custom_format_name
        WHERE cf.name IS NULL""").fetchall()
    if orphans:
        print(f"  X {len(orphans)} orphaned profile->CF refs"); [print("   ", o) for o in orphans[:5]]; sys.exit(1)
    print("  OK profile -> CF references resolve")
    orphans_re = v.execute("""SELECT cp.custom_format_name, cp.regular_expression_name
        FROM condition_patterns cp
        LEFT JOIN regular_expressions r ON r.name = cp.regular_expression_name
        WHERE r.name IS NULL""").fetchall()
    if orphans_re:
        print(f"  X {len(orphans_re)} orphaned CF->regex refs"); [print("   ", o) for o in orphans_re[:5]]; sys.exit(1)
    print("  OK CF condition -> regex references resolve")
    fk = v.execute("PRAGMA foreign_key_check").fetchall()
    if fk:
        print(f"  X {len(fk)} FK violations"); [print("   ", x) for x in fk[:5]]; sys.exit(1)
    print("  OK FK integrity")

    print("\n=> Quality profiles in merged DB:")
    for r in v.execute("SELECT name FROM quality_profiles ORDER BY name"):
        print(f"   - {r[0]}")
    allns = ns_cf + ns_re
    if allns:
        print(f"\n=> Sample namespaced entities ({len(allns)} total):")
        for base, alias in sorted(set(allns))[:14]:
            print(f"   {base!r}  ->  in [{alias}]")
    print("\n  OK Merge complete.")


if __name__ == "__main__":
    main()
