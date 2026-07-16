# Profilarr Combined Database — FR + Dumpstarr

Base **Profilarr v2** combinée pour Radarr/Sonarr. Fusionne une base **française** (Jojont54) et une base **anime anglais** (Dumpstarr) dans un seul dépôt, pour pouvoir utiliser des profils des deux sur une même instance — Profilarr n'autorise pas d'importer des profils de bases différentes.

## Utilisation (Profilarr ≥ 2.0.0)

**Databases → + Link Repository →**
```
https://github.com/superdarki/profilarr
```
Champ *branch* laissé **vide**. Puis importer les profils voulus vers Radarr/Sonarr.

> Profilarr ne lie que des dépôts **github.com** (contrainte codée en dur) — d'où l'hébergement ici et non sur un Gitea self-hosted.

## Sources fusionnées

| Alias | Repo | Rôle | Suffixe |
|-------|------|------|---------|
| `fr` | [Jojont54/Profilarr-database-french-regex](https://github.com/Jojont54/Profilarr-database-french-regex) `@stable` | Profils FR Multi/VF/VOSTFR (films + séries + anime FR) | **`[FR]`** |
| `dumpstarr` | [Dumpstarr/Database](https://github.com/Dumpstarr/Database) `@stable` | Profils anime EngSub + HQ/LQ films/séries | **`[EN]`** |

Les deux dérivent de la base Dictionarry/TRaSH (gros tronc commun).

## Namespacing — suffixe systématique

**Chaque entité (custom format, regex, profil) de chaque source reçoit le suffixe de sa source, toujours** — pas seulement en cas de collision. Tout le FR est en `[FR]`, tout le Dumpstarr en `[EN]`, et toutes les références internes (profil→CF, CF→regex) sont réécrites en conséquence. Résultat : deux jeux totalement séparés, chacun score comme son auteur l'a conçu, rien ne s'écrase.

Les entités de base partagées par le **schéma** (tags, langues, qualités) ne sont pas suffixées et restent uniques.

## Profils disponibles (22)

Le suffixe `" FR"` d'origine des profils Jojont54 est retiré, remplacé par `[FR]`.

**FR** (14) : `720p Quality [FR]`, `1080p Balanced [FR]`, `1080p Compact [FR]`, `1080p Efficient [FR]`, `1080p Quality [FR]`, `1080p Quality HDR [FR]`, `1080p Remux [FR]`, `2160p Balanced [FR]`, `2160p Compact [FR]`, `2160p Efficient [FR]`, `2160p Quality [FR]`, `2160p Remux [FR]`, `Anime 1080p [FR]`, `Anime 1080p VOSTFR [FR]`.

**EN / Dumpstarr** (8) : `LQ 1080p [EN]`, `Anime 1080p [EN]`, `Movies 1080p [EN]`, `Movies 1080p HQ [EN]`, `Movies 2160p [EN]`, `Movies 2160p HQ [EN]`, `TV 1080p [EN]`, `TV 2160p [EN]`.

> `Anime 1080p [FR]` (VF/VOSTFR) et `Anime 1080p [EN]` (EngSub) coexistent. Astuce : tag `anime` (Seerr + auto-tagging) pour router le bon profil.

## Comment c'est construit

- **Config** : [`sources.yml`](sources.yml) — liste ordonnée de N sources, chacune avec `namespace` (suffixe ; `null`/`""` = base non-suffixée, une seule autorisée) et `strip_suffix` optionnel.
- **Moteur** : [`.github/scripts/build_merged.py`](.github/scripts/build_merged.py) — rejoue les migrations `ops/*.sql` de chaque source sur le schéma Dictionarry (SQLite en mémoire), applique strip + suffixe, réécrit les références, puis émet la sortie. Validation finale : liens profil→CF, CF→regex, intégrité FK.
- **Sortie** : `ops/*.sql` en **8 fichiers par catégorie** (FK-ordonnés), au lieu d'un snapshot unique — Profilarr suit chaque fichier par hash, donc seul le fichier modifié se ré-applique. `pcd.json` regénéré.
- **Sortie déterministe** : dépend uniquement des SHA upstream (aucun horodatage) → la CI ne committe que sur un vrai changement upstream.
- **`ops/*.sql` et `pcd.json` sont générés — ne pas éditer à la main.**
- Adapté de [serversathome/profilarr](https://github.com/serversathome/profilarr) (généralisé N sources + double suffixe systématique + strip + sortie découpée).

```
ops/
  0.tags-qualities-languages.sql   4.quality_profiles.sql
  1.regular_expressions.sql        5.conditions.sql
  2.custom_formats.sql             6.links-and-tags.sql
  3.quality-defs-groups-media.sql  7.tests.sql
```

## Mise à jour automatique

[`.github/workflows/sync-upstreams.yml`](.github/workflows/sync-upstreams.yml) (GitHub Actions) reconstruit **quotidiennement** (04:17 UTC) + `workflow_dispatch` + à chaque push de `sources.yml`/`build_merged.py`. Il clone les upstreams frais, rebuild, et **committe seulement si la sortie change**. Si les màj ne remontent pas dans Profilarr : **re-linker** la database.

Pour améliorer les profils eux-mêmes : contribuer **en amont** ([Jojont54](https://github.com/Jojont54/Profilarr-database-french-regex) / [Dumpstarr](https://github.com/Dumpstarr/Database)), pas ici.
