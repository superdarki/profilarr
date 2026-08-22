-- ============================================================================
-- 4.quality_profiles.sql — merged Profilarr v2 (superdarki/profilarr) — tables: quality_profiles
-- schema e1c2bd73 | sources: fr=bef96006(ns= [FR]); dumpstarr=ed451ed1(ns= [EN])
-- GENERATED — do not edit by hand (rebuilt by .gitea/scripts/build_merged.py).
-- Deterministic: output depends only on upstream commit shas (no timestamps),
-- so the CI commits only when an upstream actually changed.
-- ============================================================================

PRAGMA foreign_keys = OFF;

-- [fr] quality_profiles
-- quality_profiles: 14 rows
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('1080p Balanced [FR]', '1080p Balanced FR cible des **WEB-DL 1080p** fiables et stables, en utilisant
la source de streaming et les formats audio pour estimer le niveau de transparence.

- Taille moyenne film ~ 4 a 8 Go par film
- Classement qualite film ~ 6/10
- Taille moyenne serie ~ 2 a 4 Go par episode
- Classement qualite serie ~ 7/10', 1, 20000, 1000000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('1080p Compact [FR]', '1080p Compact FR cible des encodes BluRay et WEB x265 de qualite faible a moyenne,
avec des fichiers plus legers.

- Taille moyenne film ~ 3 a 6 Go par film
- Classement qualite film ~ 4/10
- Taille moyenne serie ~ 1 a 2 Go par episode
- Classement qualite serie ~ 4/10', 1, 20000, 1000000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('1080p Efficient [FR]', '1080p Efficient FR cible des encodes BluRay et WEB x265 de bonne qualite, avec
un bon compromis entre taille et rendu.

- Taille moyenne film ~ 6 a 12 Go par film
- Classement qualite film ~ 7/10
- Taille moyenne serie ~ 2 a 3 Go par episode
- Classement qualite serie ~ 6/10', 1, 20000, 1000000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('1080p Quality [FR]', '1080p Quality FR utilise le [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi)
pour cibler des encodes x264 1080p **transparents**.

- Taille moyenne film ~ 10 a 15 Go par film
- Classement qualite film ~ 8/10
- Taille moyenne serie ~ 4 a 8 Go par episode
- Classement qualite serie ~ 8/10', 1, 20000, 1000000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('1080p Quality HDR [FR]', '1080p Quality HDR FR utilise le [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi)
pour cibler des encodes x265 HDR 1080p **transparents**.

- Taille moyenne film ~ 10 a 20 Go par film
- Classement qualite film ~ 9/10
- Taille moyenne serie ~ 4 a 10 Go par episode
- Classement qualite serie ~ 9/10', 1, 20000, 1000000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('1080p Remux [FR]', '1080p Remux FR utilise les **formats audio** pour prioriser les BluRay HD
lossless de haute qualite, avec un repli vers des encodes BluRay transparents.

- Taille moyenne film ~ 20 a 30 Go par film
- Classement qualite film ~ 10/10
- Taille moyenne serie ~ 6 a 12 Go par episode
- Classement qualite serie ~ 10/10', 1, 20000, 1000000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('2160p Balanced [FR]', '2160p Balanced FR cible des **WEB-DL 2160p avec audio lossy** fiables et stables.

- Taille moyenne film ~ 15 a 30 Go par film
- Classement qualite film ~ 8/10
- Taille moyenne serie ~ 5 a 15 Go par episode
- Classement qualite serie ~ 8/10', 1, 20000, 1000000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('2160p Efficient [FR]', '2160p Efficient FR cible des **WEB-DL 2160p avec audio lossy** fiables et stables,
avec un repli specialise vers 1080p Efficient.

- Taille moyenne film ~ 15 a 30 Go par film
- Classement qualite film ~ 6/10
- Taille moyenne serie ~ 4 a 12 Go par episode
- Classement qualite serie ~ 6/10', 1, 20000, 1000000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('2160p Quality [FR]', '2160p Quality FR utilise l''indice [**Encode Efficiency Index**](https://dictionarry.dev/wiki/eei)
avec un ratio cible de 60 % pour prioriser des encodes x265 4K **transparents**.

- Taille moyenne film ~ 30 a 50 Go par film
- Classement qualite film ~ 9/10
- Taille moyenne serie ~ 10 a 20 Go par episode
- Classement qualite serie ~ 9/10', 1, 20000, 1000000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('2160p Remux [FR]', '2160p Remux FR utilise les **formats video et audio** pour prioriser les copies
lossless de haute qualite issues de BluRay UHD.

- Taille moyenne film ~ 40 a 60 Go par film
- Classement qualite film ~ 10/10
- Taille moyenne serie ~ 15 a 30 Go par episode
- Classement qualite serie ~ 10/10', 1, 20000, 1000000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('720p Quality [FR]', '720p Quality FR utilise le [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi)
pour cibler des encodes x264 720p **transparents**.

- Taille moyenne film ~ 4 a 8 Go par film
- Classement qualite film ~ 5/10
- Taille moyenne serie ~ 2 a 4 Go par episode
- Classement qualite serie ~ 5/10', 1, 20000, 1000000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('Anime 1080p [FR]', 'Anime 1080p FR cible des releases anime 1080p de qualité en combinant
les sources techniques de Dictionarry avec les tiers de teams Anime FR.

- Priorise MULTi / French Original, puis VOSTFR, puis VF
- Accepte les encodes anime HEVC/x265 et HDR
- Rejette VFQ, les groupes de faible qualité et les releases sans marqueur français explicite
- Utilise une échelle maximale de 1 000 000 points comme les autres profils FR', 1, 20000, 1000000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('Anime 1080p VOSTFR [FR]', 'Anime 1080p VOSTFR FR reprend le même socle technique et les mêmes
tiers de teams que le profil Anime 1080p FR, mais impose strictement la VOSTFR.

- Accepte uniquement les releases détectées VOSTFR
- Accepte les encodes anime HEVC/x265 et HDR
- Rejette MULTi, VF, VFQ, French Original et les releases sans marqueur français explicite
- Utilise une échelle maximale de 1 000 000 points comme les autres profils FR', 1, 20000, 1000000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('2160p Compact [FR]', '2160p Compact FR cible des encodes BluRay x265 de type 4K Light,
avec des fichiers plus legers.

- Taille moyenne film ~ 8 a 18 Go par film
- Classement qualite film ~ 5/10
- Taille moyenne serie ~ 3 a 6 Go par episode
- Classement qualite serie ~ 5/10', 1, 20000, 1000000, 1);

-- [dumpstarr] quality_profiles
-- quality_profiles: 8 rows
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('LQ 1080p [EN]', '- This profile is for **SIDCA** (Sh*t I Don''t Care About). The primary tier and LQ groups are not scored to allow "low quality" releases. For example, user requests "Keeping Up with the Kardashians" and you would prefer to save as much storage space as humanly possible so this user can watch this "show". This profile works great on animated series.
- You can expect to grab **MeGusta** or **iVy** releases 99% of the time.
- AV1 and x265 codecs are allowed.', 1, 25, 10000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('Anime 1080p [EN]', 'Based on the TRaSH Guides Anime Profile, focusing on media that has Dual Audio.
- This profile will grab between a SDTV - 1080p Bluray file.
- You will be preferring Dual Audio media (ie including English along with original language). If you''d prefer to **only** have the original language (Japanese), remove the Dual Audio format and set your language preference in this profile.
- Dual Audio releases are always preferred.', 1, 0, 10000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('Movies 1080p [EN]', 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile will prefer streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.', 1, 750, 10000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('Movies 2160p [EN]', 'This profile focuses on streaming optimized sources with little to no transcoding needed and is recommended for the average user or if you **do not** use a dedicated streaming box. (i.e. AppleTV, NVIDIA Shield, etc)
- This profile will prefer streaming optimized releases groups like **BHDStudio** and **hallowed**.
- This profile does not allow releases with HD Audio to ensure direct-play compatibility.
- Releases without HDR fallback will be scored negatively to ensure playability across platforms.', 1, 1000, 10000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('Movies 2160p HQ [EN]', 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile prefers releases sources from MA (Movies Anywhere).
- This profile prefers 4K releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL.
- Releases **without** HDR fallback are not allowed.', 1, 500, 10000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('TV 1080p [EN]', 'Based on the TRaSH Guides WEB-1080p (Alternative) profile, focusing on balanced quality/file size.
- x265/HEVC is **allowed** but not preferred on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.', 1, 0, 10000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('TV 2160p [EN]', 'Based on the TRaSH Guides WEB-2160p (Alternative) profile, focusing on balanced quality/file size.
- This profile will **prefer** releases with HDR or Dolby Vision.
- x265/HEVC is **allowed** on this profile, so some transcoding is possible if your client **does not** support x265/HEVC.
- Uncensored versions will be preferred while extended/special versions will be used as fallback.
- Releases **without** HDR fallback are not allowed.', 1, 0, 10000, 1);
INSERT OR IGNORE INTO "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") VALUES ('Movies 1080p HQ [EN]', 'This profile follows the same sort of logic like the TRaSH SQP-4 MA Hybrid Profile. This results in higher-quality, WEB releases being preferred. This usually results in higher-quality audio, higher video bitrates and 30% larger file size.
- This profile prefers releases sources from MA (Movies Anywhere).
- This profile allows releases with **HDR** and **Dolby Vision**.
- This profile will allow HD audio like TrueHD, DTS-X, etc but only if the source is WEB-DL.
- Releases **without** HDR fallback are not allowed.', 1, 500, 10000, 1);

