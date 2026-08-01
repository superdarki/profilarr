-- ============================================================================
-- 3.quality-defs-groups-media.sql — merged Profilarr v2 (superdarki/profilarr) — tables: quality_api_mappings, radarr_quality_definitions, sonarr_quality_definitions, radarr_media_settings, sonarr_media_settings, radarr_naming, sonarr_naming, delay_profiles, quality_groups
-- schema e1c2bd73 | sources: fr=aa75ec2e(ns= [FR]); dumpstarr=623c2619(ns= [EN])
-- GENERATED — do not edit by hand (rebuilt by .gitea/scripts/build_merged.py).
-- Deterministic: output depends only on upstream commit shas (no timestamps),
-- so the CI commits only when an upstream actually changed.
-- ============================================================================

PRAGMA foreign_keys = OFF;

-- [fr] quality_api_mappings
-- quality_api_mappings: 52 rows
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('BR-DISK', 'radarr', 'BR-DISK');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-1080p', 'radarr', 'Bluray-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-2160p', 'radarr', 'Bluray-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-480p', 'radarr', 'Bluray-480p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-576p', 'radarr', 'Bluray-576p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-720p', 'radarr', 'Bluray-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('CAM', 'radarr', 'CAM');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('DVD', 'radarr', 'DVD');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('DVD-R', 'radarr', 'DVD-R');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('DVDSCR', 'radarr', 'DVDSCR');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('HDTV-1080p', 'radarr', 'HDTV-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('HDTV-2160p', 'radarr', 'HDTV-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('HDTV-720p', 'radarr', 'HDTV-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('REGIONAL', 'radarr', 'REGIONAL');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Raw-HD', 'radarr', 'Raw-HD');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Remux-1080p', 'radarr', 'Remux-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Remux-2160p', 'radarr', 'Remux-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('SDTV', 'radarr', 'SDTV');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('TELECINE', 'radarr', 'TELECINE');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('TELESYNC', 'radarr', 'TELESYNC');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Unknown', 'radarr', 'Unknown');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-1080p', 'radarr', 'WEBDL-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-2160p', 'radarr', 'WEBDL-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-480p', 'radarr', 'WEBDL-480p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-720p', 'radarr', 'WEBDL-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-1080p', 'radarr', 'WEBRip-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-2160p', 'radarr', 'WEBRip-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-480p', 'radarr', 'WEBRip-480p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-720p', 'radarr', 'WEBRip-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WORKPRINT', 'radarr', 'WORKPRINT');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-1080p', 'sonarr', 'Bluray-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-2160p', 'sonarr', 'Bluray-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-480p', 'sonarr', 'Bluray-480p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-576p', 'sonarr', 'Bluray-576p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-720p', 'sonarr', 'Bluray-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('DVD', 'sonarr', 'DVD');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('HDTV-1080p', 'sonarr', 'HDTV-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('HDTV-2160p', 'sonarr', 'HDTV-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('HDTV-720p', 'sonarr', 'HDTV-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Raw-HD', 'sonarr', 'Raw-HD');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('SDTV', 'sonarr', 'SDTV');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Unknown', 'sonarr', 'Unknown');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-1080p', 'sonarr', 'WEBDL-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-2160p', 'sonarr', 'WEBDL-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-480p', 'sonarr', 'WEBDL-480p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-720p', 'sonarr', 'WEBDL-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-1080p', 'sonarr', 'WEBRip-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-2160p', 'sonarr', 'WEBRip-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-480p', 'sonarr', 'WEBRip-480p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-720p', 'sonarr', 'WEBRip-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Remux-1080p', 'sonarr', 'Bluray-1080p Remux');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Remux-2160p', 'sonarr', 'Bluray-2160p Remux');

-- [dumpstarr] quality_api_mappings
-- quality_api_mappings: 52 rows
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('BR-DISK', 'radarr', 'BR-DISK');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-1080p', 'radarr', 'Bluray-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-2160p', 'radarr', 'Bluray-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-480p', 'radarr', 'Bluray-480p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-576p', 'radarr', 'Bluray-576p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-720p', 'radarr', 'Bluray-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('CAM', 'radarr', 'CAM');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('DVD', 'radarr', 'DVD');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('DVD-R', 'radarr', 'DVD-R');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('DVDSCR', 'radarr', 'DVDSCR');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('HDTV-1080p', 'radarr', 'HDTV-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('HDTV-2160p', 'radarr', 'HDTV-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('HDTV-720p', 'radarr', 'HDTV-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('REGIONAL', 'radarr', 'REGIONAL');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Raw-HD', 'radarr', 'Raw-HD');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Remux-1080p', 'radarr', 'Remux-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Remux-2160p', 'radarr', 'Remux-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('SDTV', 'radarr', 'SDTV');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('TELECINE', 'radarr', 'TELECINE');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('TELESYNC', 'radarr', 'TELESYNC');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Unknown', 'radarr', 'Unknown');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-1080p', 'radarr', 'WEBDL-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-2160p', 'radarr', 'WEBDL-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-480p', 'radarr', 'WEBDL-480p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-720p', 'radarr', 'WEBDL-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-1080p', 'radarr', 'WEBRip-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-2160p', 'radarr', 'WEBRip-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-480p', 'radarr', 'WEBRip-480p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-720p', 'radarr', 'WEBRip-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WORKPRINT', 'radarr', 'WORKPRINT');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-1080p', 'sonarr', 'Bluray-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-2160p', 'sonarr', 'Bluray-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-480p', 'sonarr', 'Bluray-480p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-576p', 'sonarr', 'Bluray-576p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Bluray-720p', 'sonarr', 'Bluray-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('DVD', 'sonarr', 'DVD');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('HDTV-1080p', 'sonarr', 'HDTV-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('HDTV-2160p', 'sonarr', 'HDTV-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('HDTV-720p', 'sonarr', 'HDTV-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Raw-HD', 'sonarr', 'Raw-HD');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('SDTV', 'sonarr', 'SDTV');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Unknown', 'sonarr', 'Unknown');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-1080p', 'sonarr', 'WEBDL-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-2160p', 'sonarr', 'WEBDL-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-480p', 'sonarr', 'WEBDL-480p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBDL-720p', 'sonarr', 'WEBDL-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-1080p', 'sonarr', 'WEBRip-1080p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-2160p', 'sonarr', 'WEBRip-2160p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-480p', 'sonarr', 'WEBRip-480p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('WEBRip-720p', 'sonarr', 'WEBRip-720p');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Remux-1080p', 'sonarr', 'Bluray-1080p Remux');
INSERT OR IGNORE INTO "quality_api_mappings" ("quality_name", "arr_type", "api_name") VALUES ('Remux-2160p', 'sonarr', 'Bluray-2160p Remux');

-- [fr] radarr_quality_definitions
-- radarr_quality_definitions: 30 rows
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Bluray-1080p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Bluray-2160p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Bluray-480p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Bluray-576p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Bluray-720p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'BR-DISK', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'CAM', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'DVD', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'DVD-R', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'DVDSCR', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'HDTV-1080p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'HDTV-2160p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'HDTV-720p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Raw-HD', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'REGIONAL', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Remux-1080p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Remux-2160p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'SDTV', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'TELECINE', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'TELESYNC', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Unknown', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBDL-1080p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBDL-2160p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBDL-480p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBDL-720p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBRip-1080p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBRip-2160p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBRip-480p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBRip-720p', 0, 2000, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WORKPRINT', 0, 2000, 1990);

-- [dumpstarr] radarr_quality_definitions
-- radarr_quality_definitions: 30 rows
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'BR-DISK', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Bluray-1080p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Bluray-2160p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Bluray-480p', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Bluray-576p', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Bluray-720p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'CAM', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'DVD', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'DVD-R', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'DVDSCR', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'HDTV-1080p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'HDTV-2160p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'HDTV-720p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'REGIONAL', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Raw-HD', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Remux-1080p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Remux-2160p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'SDTV', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'TELECINE', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'TELESYNC', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'Unknown', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBDL-1080p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBDL-2160p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBDL-480p', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBDL-720p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBRip-1080p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBRip-2160p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBRip-480p', 0, 0, 1990);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WEBRip-720p', 0, 0, 1999);
INSERT OR IGNORE INTO "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Radarr', 'WORKPRINT', 0, 0, 1990);

-- [fr] sonarr_quality_definitions
-- sonarr_quality_definitions: 22 rows
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Bluray-1080p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Remux-1080p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Bluray-2160p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Remux-2160p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Bluray-480p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Bluray-576p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Bluray-720p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'DVD', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'HDTV-1080p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'HDTV-2160p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'HDTV-720p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Raw-HD', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'SDTV', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Unknown', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBDL-1080p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBDL-2160p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBDL-480p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBDL-720p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBRip-1080p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBRip-2160p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBRip-480p', 0, 1000, 990);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBRip-720p', 0, 1000, 990);

-- [dumpstarr] sonarr_quality_definitions
-- sonarr_quality_definitions: 22 rows
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Bluray-1080p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Bluray-2160p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Bluray-480p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Bluray-576p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Bluray-720p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'DVD', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'HDTV-1080p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'HDTV-2160p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'HDTV-720p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Raw-HD', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Remux-1080p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Remux-2160p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'SDTV', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'Unknown', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBDL-1080p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBDL-2160p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBDL-480p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBDL-720p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBRip-1080p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBRip-2160p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBRip-480p', 5, 0, 999);
INSERT OR IGNORE INTO "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") VALUES ('Sonarr', 'WEBRip-720p', 5, 0, 999);

-- [fr] radarr_media_settings
-- radarr_media_settings: 1 rows
INSERT OR IGNORE INTO "radarr_media_settings" ("name", "propers_repacks", "enable_media_info") VALUES ('Radarr', 'doNotPrefer', 1);

-- [dumpstarr] radarr_media_settings
-- radarr_media_settings: 1 rows
INSERT OR IGNORE INTO "radarr_media_settings" ("name", "propers_repacks", "enable_media_info") VALUES ('Radarr', 'doNotPrefer', 1);

-- [fr] sonarr_media_settings
-- sonarr_media_settings: 1 rows
INSERT OR IGNORE INTO "sonarr_media_settings" ("name", "propers_repacks", "enable_media_info") VALUES ('Sonarr', 'doNotPrefer', 1);

-- [dumpstarr] sonarr_media_settings
-- sonarr_media_settings: 1 rows
INSERT OR IGNORE INTO "sonarr_media_settings" ("name", "propers_repacks", "enable_media_info") VALUES ('Sonarr', 'doNotPrefer', 1);

-- [fr] radarr_naming
-- radarr_naming: 3 rows
INSERT OR IGNORE INTO "radarr_naming" ("name", "rename", "movie_format", "movie_folder_format", "replace_illegal_characters", "colon_replacement_format") VALUES ('Radarr', 1, '{Movie CleanTitle} {(Release Year)} {tmdb-{TmdbId}} {edition-{Edition Tags}} {[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{-Release Group}', '{Movie CleanTitle} ({Release Year}) {tmdb-{TmdbId}}', 0, 'smart');
INSERT OR IGNORE INTO "radarr_naming" ("name", "rename", "movie_format", "movie_folder_format", "replace_illegal_characters", "colon_replacement_format") VALUES ('Radarr / Editionless', 1, '{Movie CleanTitle} {(Release Year)} {tmdb-{TmdbId}} {[Edition Tags]}{[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{-Release Group}', '{Movie CleanTitle} ({Release Year}) {tmdb-{TmdbId}}', 0, 'smart');
INSERT OR IGNORE INTO "radarr_naming" ("name", "rename", "movie_format", "movie_folder_format", "replace_illegal_characters", "colon_replacement_format") VALUES ('Radarr / Jellyfin-Emby', 1, '{Movie CleanTitle} {(Release Year)} [tmdbid-{TmdbId}] {edition-{Edition Tags}} {[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{-Release Group}', '{Movie CleanTitle} ({Release Year}) [tmdbid-{TmdbId}]', 0, 'smart');

-- [dumpstarr] radarr_naming
-- radarr_naming: 1 rows
INSERT OR IGNORE INTO "radarr_naming" ("name", "rename", "movie_format", "movie_folder_format", "replace_illegal_characters", "colon_replacement_format") VALUES ('Radarr', 1, '{Movie CleanTitle} {(Release Year)} {tmdb-{TmdbId}} {edition-{Edition Tags}} {[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{-Release Group}', '{Movie CleanTitle} ({Release Year}) {tmdb-{TmdbId}}', 0, 'smart');

-- [fr] sonarr_naming
-- sonarr_naming: 1 rows
INSERT OR IGNORE INTO "sonarr_naming" ("name", "rename", "standard_episode_format", "daily_episode_format", "anime_episode_format", "series_folder_format", "season_folder_format", "replace_illegal_characters", "colon_replacement_format", "custom_colon_replacement_format", "multi_episode_style") VALUES ('Sonarr', 1, '{Series TitleYear} - S{season:00}E{episode:00} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}', '{Series TitleYear} - {Air-Date} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}', '{Series TitleYear} - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}[{MediaInfo VideoBitDepth}bit]{[MediaInfo VideoCodec]}[{Mediainfo AudioCodec} { Mediainfo AudioChannels}]{MediaInfo AudioLanguages}{-Release Group}', '{Series TitleYear} {tvdb-{TvdbId}}', 'Season {season:00}', 0, 4, NULL, 5);

-- [dumpstarr] sonarr_naming
-- sonarr_naming: 1 rows
INSERT OR IGNORE INTO "sonarr_naming" ("name", "rename", "standard_episode_format", "daily_episode_format", "anime_episode_format", "series_folder_format", "season_folder_format", "replace_illegal_characters", "colon_replacement_format", "custom_colon_replacement_format", "multi_episode_style") VALUES ('Sonarr', 1, '{Series CleanTitleWithoutYear} ({Series Year}) - S{season:00}E{episode:00} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}', '{Series CleanTitleWithoutYear} ({Series Year}) - {Air-Date} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{-Release Group}', '{Series CleanTitleWithoutYear} ({Series Year}) - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{MediaInfo AudioLanguages}{[MediaInfo VideoDynamicRangeType]}[{Mediainfo VideoCodec }{MediaInfo VideoBitDepth}bit]{-Release Group}', '{Series CleanTitleWithoutYear} ({Series Year}) {tvdb-{TvdbId}}', 'Season {season:00}', 0, 4, NULL, 5);

-- [fr] delay_profiles
-- delay_profiles: 5 rows
INSERT OR IGNORE INTO "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") VALUES ('Radarr', 'prefer_torrent', 360, 360, 0, 0, NULL);
INSERT OR IGNORE INTO "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") VALUES ('Sonarr', 'prefer_torrent', 360, 360, 0, 0, NULL);
INSERT OR IGNORE INTO "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") VALUES ('Ratio Boost', 'prefer_torrent', 360, 0, 0, 0, NULL);
INSERT OR IGNORE INTO "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") VALUES ('Balanced', 'prefer_torrent', 120, 120, 0, 0, NULL);
INSERT OR IGNORE INTO "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") VALUES ('Quality', 'prefer_torrent', 360, 360, 0, 0, NULL);

-- [dumpstarr] delay_profiles
-- delay_profiles: 1 rows
INSERT OR IGNORE INTO "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") VALUES ('Default Delay', 'prefer_usenet', 60, 60, 0, 0, NULL);

-- [fr] quality_groups
-- quality_groups: 15 rows
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('1080p Balanced [FR]', '1080p Balanced FR');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('1080p Compact [FR]', '1080p Compact FR');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('1080p Efficient [FR]', '1080p Efficient FR');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('1080p Quality [FR]', '1080p Quality FR');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('1080p Quality HDR [FR]', '1080p Quality HDR FR');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('1080p Remux [FR]', '1080p Remux FR');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('2160p Balanced [FR]', '2160p Balanced FR');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('2160p Compact [FR]', '2160p Compact FR');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('2160p Efficient [FR]', '2160p Efficient FR');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('2160p Quality [FR]', '2160p Quality FR');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('2160p Remux [FR]', '2160p Remux FR');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('720p Quality [FR]', '480p Quality');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('720p Quality [FR]', '720p Quality');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Anime 1080p [FR]', 'Anime 1080p FR');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Anime 1080p VOSTFR [FR]', 'Anime 1080p VOSTFR FR');

-- [dumpstarr] quality_groups
-- quality_groups: 22 rows
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Anime 1080p [EN]', '1080p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Anime 1080p [EN]', '480p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Anime 1080p [EN]', '720p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('LQ 1080p [EN]', '1080p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('LQ 1080p [EN]', '480p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('LQ 1080p [EN]', '720p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Movies 1080p [EN]', 'WEB-1080p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Movies 1080p [EN]', 'WEB-720p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Movies 1080p HQ [EN]', '1080p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Movies 1080p HQ [EN]', '2160p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Movies 2160p [EN]', 'WEB-1080p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Movies 2160p [EN]', 'WEB-2160p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Movies 2160p [EN]', 'WEB-720p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Movies 2160p HQ [EN]', '1080p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('Movies 2160p HQ [EN]', '2160p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('TV 1080p [EN]', 'WEB 1080p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('TV 1080p [EN]', 'WEB 480p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('TV 1080p [EN]', 'WEB 720p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('TV 2160p [EN]', 'WEB 1080p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('TV 2160p [EN]', 'WEB 2160p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('TV 2160p [EN]', 'WEB 480p');
INSERT OR IGNORE INTO "quality_groups" ("quality_profile_name", "name") VALUES ('TV 2160p [EN]', 'WEB 720p');

