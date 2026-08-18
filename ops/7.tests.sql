-- ============================================================================
-- 7.tests.sql — merged Profilarr v2 (superdarki/profilarr) — tables: custom_format_tests, test_entities, test_releases
-- schema e1c2bd73 | sources: fr=aa75ec2e(ns= [FR]); dumpstarr=ed451ed1(ns= [EN])
-- GENERATED — do not edit by hand (rebuilt by .gitea/scripts/build_merged.py).
-- Deterministic: output depends only on upstream commit shas (no timestamps),
-- so the CI commits only when an upstream actually changed.
-- ============================================================================

PRAGMA foreign_keys = OFF;

-- [dumpstarr] custom_format_tests
-- custom_format_tests: 9 rows
INSERT OR IGNORE INTO "custom_format_tests" ("custom_format_name", "title", "type", "should_match", "description") VALUES ('Baseline Groups [EN]', 'Deadpool.2.2018.2160p.DSNP.WEB-DL.DDPA.5.1.DV.HDR.H.265-PiRaTeS', 'movie', 1, NULL);
INSERT OR IGNORE INTO "custom_format_tests" ("custom_format_name", "title", "type", "should_match", "description") VALUES ('HONE (Bad Name) [EN]', 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English-DiscoD HONE-', 'movie', 1, NULL);
INSERT OR IGNORE INTO "custom_format_tests" ("custom_format_name", "title", "type", "should_match", "description") VALUES ('HONE (Bad Name) [EN]', 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English-HONE', 'movie', 0, NULL);
INSERT OR IGNORE INTO "custom_format_tests" ("custom_format_name", "title", "type", "should_match", "description") VALUES ('HONE (Bad Name) [EN]', 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English.HONE-DarQ', 'movie', 1, NULL);
INSERT OR IGNORE INTO "custom_format_tests" ("custom_format_name", "title", "type", "should_match", "description") VALUES ('HONE (Bad Name) [EN]', 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English-HONE-REPACK-', 'movie', 1, NULL);
INSERT OR IGNORE INTO "custom_format_tests" ("custom_format_name", "title", "type", "should_match", "description") VALUES ('HONE (Bad Name) [EN]', 'Star Wars Episode III-Revenge of the Sith-2005-2160p UHD BluRay x265 DV HDR DDP 7.1 English-DarQ HONE', 'movie', 1, NULL);
INSERT OR IGNORE INTO "custom_format_tests" ("custom_format_name", "title", "type", "should_match", "description") VALUES ('HONE (Bad Name) [EN]', 'How to Train Your Dragon (2010) (2160p UHD BluRay x265 DV HDR10+ DDP 7.1 English - DarQ HONE)', 'movie', 1, NULL);
INSERT OR IGNORE INTO "custom_format_tests" ("custom_format_name", "title", "type", "should_match", "description") VALUES ('Dumpstarr LQ Title [EN]', 'Scrubs.S01E09.2026.1080p.DSNP.WEB-DL.DDP5.1.H.264-HDSWEB', 'series', 1, NULL);
INSERT OR IGNORE INTO "custom_format_tests" ("custom_format_name", "title", "type", "should_match", "description") VALUES ('Dumpstarr LQ Title [EN]', 'Scrubs.2026.S01E01.My.Return.1080p.DSNP.WEB-DL.DDP5.1.H.264-FLUX', 'series', 0, NULL);

-- [dumpstarr] test_entities
-- test_entities: 10 rows
INSERT OR IGNORE INTO "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") VALUES ('movie', 3049, 'Ace Ventura: Pet Detective', 1994, '/pqiRuETmuSybfnVZ7qyeoXhQyN1.jpg');
INSERT OR IGNORE INTO "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") VALUES ('series', 1668, 'Friends', 1994, '/2koX1xLkpTQM4IZebYvKysFW1Nh.jpg');
INSERT OR IGNORE INTO "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") VALUES ('movie', 10191, 'How to Train Your Dragon', 2010, '/ygGmAO60t8GyqUo9xYeYxSZAR3b.jpg');
INSERT OR IGNORE INTO "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") VALUES ('movie', 497698, 'Black Widow', 2021, '/7JPpIjhD2V0sKyFvhB9khUMa30d.jpg');
INSERT OR IGNORE INTO "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") VALUES ('movie', 1265609, 'War Machine', 2026, '/tlPgDzwIE7VYYIIAGCTUOnN4wI1.jpg');
INSERT OR IGNORE INTO "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") VALUES ('series', 4556, 'Scrubs', 2001, '/w7ri7byEYLdciSZOwWHj6TUAX7j.jpg');
INSERT OR IGNORE INTO "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") VALUES ('series', 2153, 'Arthur', 1996, '/nYN8okmcsmhd4bGVcqifZ5OCumB.jpg');
INSERT OR IGNORE INTO "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") VALUES ('series', 220102, 'Spider-Noir', 2026, '/oD8WSVqz84ZRfelkr7JPeJwR9Iv.jpg');
INSERT OR IGNORE INTO "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") VALUES ('series', 60625, 'Rick and Morty', 2013, '/owhkU6KRqdXoUQpjV8uyZGPtX58.jpg');
INSERT OR IGNORE INTO "test_entities" ("type", "tmdb_id", "title", "year", "poster_path") VALUES ('series', 2316, 'The Office', 2005, '/7DJKHzAi83BmQrWLrYYOqcoKfhR.jpg');

-- [dumpstarr] test_releases
-- test_releases: 22 rows
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('movie', 3049, 'Ace Ventura Pet Detective (1994) (2160p UHD BluRay x265 DV HDR DDP 5.1 English - DiscoD HONE)', 18758269665, '["English"]', '["NinjaCentral","DrunkenSlug"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('movie', 3049, 'Ace.Ventura.Pet.Detective.1994.PROPER.UHD.BluRay.2160p.DD.5.1.DV.HDR.x265-BHDStudio', 12159507207, '["English"]', '["NinjaCentral","DrunkenSlug"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('movie', 3049, 'Ace Ventura Pet Detective 1994 UHD BluRay 2160p DD 2 0 DV HDR x265-BHDStudio', 11478971999, '["English"]', '["NinjaCentral"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('movie', 3049, 'Ace Ventura Pet Detective-1994-2160p UHD BluRay x265 DV HDR DDP 5.1 English-DiscoD HONE-', 20147453233, '["English"]', '["NinjaCentral"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('movie', 3049, 'Ace.Ventura.Pet.Detective.1994.1080p.AMZN.WEB-DL.DDP5.1.H.264-Kitsune', 7564373595, '["English"]', '["NinjaCentral","DrunkenSlug"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('movie', 3049, 'Ace.Ventura.Pet.Detective.1994.1080p.AMZN.WEB-DL.DDP5.1.H.264-Kitsune', 7047187724, '["English"]', '["NinjaCentral","NZBgeek"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('series', 1668, 'Friends.S01E12.The.One.with.the.Dozen.Lasagnas.1080p.HMAX.WEB-DL.DDP5.1.H.264-Kitsune', NULL, '[]', '[]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('movie', 10191, 'How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x265.DV.HDR10+.DDP.7.1.English.DarQ.HONE', 15782520953, '["English"]', '["NinjaCentral","DrunkenSlug"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('movie', 10191, 'How to Train Your Dragon (2010) (2160p UHD BluRay x265 DV HDR10+ DDP 7.1 English - DarQ HONE)', 14633504632, '["English"]', '["NinjaCentral"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('movie', 10191, 'How.to.Train.Your.Dragon-2010-2160p.UHD.BluRay.x265.DV.HDR10.DDP.7.1.English-DarQ.HONE', 14628809000, '["English"]', '["NZBgeek"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('movie', 10191, 'How.to.Train.Your.Dragon.2010.2160p.UHD.BluRay.x265.DV.HDR10+.DDP.7.1.English-HONE-REPACK', 15784004813, '["English"]', '["NinjaCentral","DrunkenSlug"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('movie', 497698, 'Black Widow-2021-IMAX-2160p DSNP WEB-DL Hybrid H265 DV HDR DDP Atmos 5.1 English-HONE-REPACK-', 19649475379, '["English"]', '["NinjaCentral"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('movie', 1265609, 'War Machine-2026-2160p NF WEB-DL Hybrid H265 DV HDR DDP Atmos 5 1 English-HONE-', NULL, '["English"]', '["NinjaCentral"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('series', 4556, 'Scrubs.S01E15.My.Bed.Banter.Beyond.Upscale.Hybrid.1080p.WEBRip.DD2.0.H.264-DEADBADUGLY', NULL, '[]', '[]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('series', 4556, 'Scrubs.S01E15.My.Bed.Banter.Beyond.Upscale.Hybrid.1080p.WEBRip.DD2.0.H.264-BoOK', NULL, '[]', '[]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('series', 2153, 'Arthur.S01E01.Arthurs.Eyes.and.Francines.Bad.Hair.Day.480p.AMZN.WEBRip.DDP2.0.x264-DAWN-AsRequested', 214748365, '["English"]', '["NZBgeek"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('series', 2153, 'Arthur.S01E01-E02.Arthurs.Eyes..Francines.Bad.Hair.Day.480p.AMZN.WEB-DL.DDP2.0.AVC-AndreMor', 214748365, '["English"]', '["DrunkenSlug"]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('series', 220102, 'Spider-Noir S01E08 The Man in the Mask 1080p AMZN WEB-DL DDP5 1 Atmos H 264-FLUX', 4724464026, '["English"]', '[]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('series', 220102, 'Spider-Noir S01E01 Step Into My Office BW 1080p AMZN WEB-DL DDP5 1 Atmos H 264-playWEB', 4617089843, '["English"]', '[]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('series', 60625, '	Rick and Morty S09E04 A Ricker Runs Through It 1080p AMZN WEB-DL DDP5 1 H 264-Kitsune', 858993459, '["English"]', '[]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('series', 60625, 'Rick.and.Morty.S09E04.A.Ricker.Runs.Through.It.1080p.AMZN.WEB-DL.DDP5.1.H.264-NTb', 858993459, '["English"]', '[]', '[]');
INSERT OR IGNORE INTO "test_releases" ("entity_type", "entity_tmdb_id", "title", "size_bytes", "languages", "indexers", "flags") VALUES ('series', 2316, 'The.Office.US.S09E15.Couples.Discount.Extended.Cut.1080p.AMZN.WEB-DL.DDP5.1.H.264-FLUX', 2576980378, '["English"]', '[]', '[]');

