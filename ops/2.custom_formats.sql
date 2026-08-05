-- ============================================================================
-- 2.custom_formats.sql — merged Profilarr v2 (superdarki/profilarr) — tables: custom_formats
-- schema e1c2bd73 | sources: fr=aa75ec2e(ns= [FR]); dumpstarr=649f43ce(ns= [EN])
-- GENERATED — do not edit by hand (rebuilt by .gitea/scripts/build_merged.py).
-- Deterministic: output depends only on upstream commit shas (no timestamps),
-- so the CI commits only when an upstream actually changed.
-- ============================================================================

PRAGMA foreign_keys = OFF;

-- [fr] custom_formats
-- custom_formats: 202 rows
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('1080p Bluray [FR]', 'Matches 1080p Blurays that are NOT remuxes', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('1080p HDTV [FR]', 'Matches 1080p HDTV.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('1080p Remux [FR]', 'Matches 1080p Remux', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('1080p WEB-DL [FR]', 'Matches 1080p WEB-DLs.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('1080p WEB-DL (Efficient) [FR]', 'Matches 1080p WEB-DLs.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('1080p WEBRip [FR]', 'Matches 1080p WEBRips.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('2160p Remux [FR]', 'Matches 2160p Remux', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('2160p WEB-DL [FR]', 'Matches 2160p WEB-DLs.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('3D [FR]', 'Matches the ''3D'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('480p Bluray [FR]', 'Matches 480p Blurays.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('480p WEB-DL [FR]', 'Matches 480p WEB-DLs.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('576p Bluray [FR]', 'Matches 576p Blurays.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('720p Bluray [FR]', 'Matches 720p Blurays that are NOT remuxes', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('720p HDTV [FR]', 'Matches 720p HDTV.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('720p WEB-DL [FR]', 'Matches 720p WEB-DLs.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('720p WEBRip [FR]', 'Matches 720p WEBRips.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('AAC [FR]', 'Matches ''AAC'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Amazon Enhancement [FR]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('AMZN [FR]', 'Matches ''Amazon Prime'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Atmos [FR]', 'Matches ''Atmos'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Atmos (Missing) [FR]', 'Attempts to match releases which have Atmos (TrueHD 7.1) that don''t label it correctly.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('ATVP [FR]', 'Matches ''Apple TV+'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('AV1 [FR]', 'Matches the ''AV1'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('B&W [FR]', 'Matches the ''B&W'' and ''Colour'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('BCORE [FR]', 'Matches ''Bravia Core'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Better Theatricals [FR]', 'Matches movies where the `Theatrical` cut is considered the better version. Subjectively chosen, based on Dictionarry''s personal preferences and major opinion. Needed to override the default special edition preference. Matches:
- Terminator 2: Judgement Day (1991)
- Alien (1979)
- Star Wars OT (1977-1983)
- Apocalypse Now (1979)
- The Exorcist (1973)
- Donnie Darko (2001)
- Amadeus (1984)
- Payback (1999)
- Almost Famous (2000)', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('CR [FR]', 'Matches ''Crunchyroll'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('CRAV [FR]', 'Matches ''Crave'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('CRIT [FR]', 'Matches ''Criterion Channel'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Disney+ Enhancement [FR]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Dolby Atmos [FR]', 'Matches ''Atmos'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Dolby Digital [FR]', 'Matches ''Dolby Digital'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Dolby Digital + [FR]', 'Matches ''Dolby Digital +'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Dolby Vision [FR]', 'Matches the ''Dolby Vision'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Dolby Vision (Without Fallback) [FR]', 'Matches the ''Dolby Vision (Without Fallback) Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DRPO [FR]', 'Matches ''Dropout TV'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DSNP [FR]', 'Matches ''Disney+'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DTS [FR]', 'Matches ''DTS'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DTS-ES [FR]', 'Matches ''DTS-ES'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DTS-HD HRA [FR]', 'Matches ''DTS-HD HRA'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DTS-HD MA [FR]', 'Matches ''DTS-HD MA'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DTS-X [FR]', 'Matches ''DTS-X'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DVD [FR]', 'The DVD format, or Digital Versatile Disc, is an optical disc storage medium widely used for video, audio, and data storage. It offers a standard capacity of 4.7 GB for single-layer discs and up to 8.5 GB for dual-layer discs, making it suitable for movies, software, and backups. DVDs provide a resolution of 720x480 (NTSC) or 720x576 (PAL) for video and support Dolby Digital or DTS audio for high-quality sound. They are compatible with standalone DVD players, computer drives, and gaming consoles, offering broad accessibility while requiring a physical disc for playback.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DVD Remux [FR]', 'A DVD Remux is a direct rip of a DVD''s content without any re-encoding, preserving the original video, audio, and subtitle quality. It retains the exact resolution, bitrate, and format of the DVD, ensuring no loss in fidelity compared to the source.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Extras [FR]', 'Matches the ''Extras'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FLAC [FR]', 'Matches ''FLAC'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Anime FanSub [FR]', 'Matches French anime fansub release groups', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Anime Tier 01 [FR]', 'Matches French anime release groups who fall under Anime Tier 01', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Anime Tier 02 [FR]', 'Matches French anime release groups who fall under Anime Tier 02', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Anime Tier 03 [FR]', 'Matches French anime release groups who fall under Anime Tier 03', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Global Tier 01 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Global Tier 02 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR HDLight Tier [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR LQ [FR]', 'Matches French low-quality release groups', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Movie HD Bluray Tier 01 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Movie HD Bluray Tier 02 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Movie Remux Tier 01 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Movie Remux Tier 02 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Movie UHD Bluray Tier 01 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Movie UHD Bluray Tier 02 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Movie WEB Tier 01 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Movie WEB Tier 02 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Scene Tier [FR]', 'Matches known French scene release groups', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR TV HD Bluray Tier 01 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR TV Remux Tier 01 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR TV WEB Tier 01 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR TV WEB Tier 02 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR TV WEB Tier 03 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('French Missing [FR]', 'Rejects releases without an explicit French MULTi, French Original, VF, VOSTFR, or VFQ marker.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('French MULTi [FR]', 'Prioritizes French MULTi releases without also matching VFQ or VOSTFR.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('French Original Marker [FR]', 'Priorise les releases marquees VOF ou VOQ comme version originale francophone.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('French VF [FR]', 'Prioritizes French dubbed releases when they are not MULTi, VOSTFR, or VFQ.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('French VFQ [FR]', 'Rejects Quebec French releases from French profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('French VOSTFR [FR]', 'Allows lower-priority original-audio releases with French subtitles when they are not MULTi or VF.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Full Disc [FR]', 'Matches the ''Full Disc'' regex pattern and negates any remuxes / encodes. ', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Full Disc (Quality Match) [FR]', 'Matches Full Discs using a Radarr Quality Match', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('German DL [FR]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('h265 [FR]', 'Matches ''h265'' regex pattern.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('h265 (Efficient) [FR]', 'Matches ''h265'' regex pattern.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HBO Max Enhancement [FR]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HDR [FR]', 'Matches the ''HDR'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HDR (Missing) [FR]', 'Attempts to match HDR in 1080p x265 Encodes labelled with x265', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HDR10+ [FR]', 'Matches the ''HDR10+'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HMAX [FR]', 'Matches ''HBO Max'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HTSR [FR]', 'Matches ''Hotstar'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HULU [FR]', 'Matches ''Hulu'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('iP [FR]', 'Matches ''BBC iPlayer'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('iT [FR]', 'Matches ''iTunes'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('iTunes Enhancement [FR]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Lossless Audio [FR]', 'Matches any Lossless Audio Track not in a 2160p Release.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('MA [FR]', 'Matches ''Movies Anywhere'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('MAX [FR]', 'Matches ''Max'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Movies Anywhere Enhancement [FR]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('MUBI [FR]', 'Matches ''Mubi'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('NF [FR]', 'Matches ''Netflix'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('NOW [FR]', 'Matches ''Now'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Opus [FR]', 'Matches ''Opus'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('PCM [FR]', 'Matches ''PCM'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('PCOK [FR]', 'Matches ''Peacock'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('PLAY [FR]', 'Matches ''Google TV'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('PMTP [FR]', 'Matches ''Paramount+'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Remux [FR]', 'Matches Remux as a codec, not a source. Either h265 or h264.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Repack1 [FR]', 'Release groups use specific terms to indicate when they''re fixing issues in releases:
In Scene releases, groups can only occupy one release slot, which leads to two different terms:
- PROPER is used when a different group fixes issues in another group''s release
- REPACK is used when a group fixes issues in their own release

P2P releases are simpler - REPACK is typically used whenever a group releases a fixed version.

REAL / RERIP indicate similar things but their specific meaning / origin is unclear.

This custom format will catch basic level fixes (no number suffixes).', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Repack2 [FR]', 'Release groups use specific terms to indicate when they''re fixing issues in releases:
In Scene releases, groups can only occupy one release slot, which leads to two different terms:
- PROPER is used when a different group fixes issues in another group''s release
- REPACK is used when a group fixes issues in their own release

P2P releases are simpler - REPACK is typically used whenever a group releases a fixed version.

REAL / RERIP indicate similar things but their specific meaning / origin is unclear.

This custom format will catch level 2 fixes', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Repack3 [FR]', 'Release groups use specific terms to indicate when they''re fixing issues in releases:
In Scene releases, groups can only occupy one release slot, which leads to two different terms:
- PROPER is used when a different group fixes issues in another group''s release
- REPACK is used when a group fixes issues in their own release

P2P releases are simpler - REPACK is typically used whenever a group releases a fixed version.

REAL / RERIP indicate similar things but their specific meaning / origin is unclear.

This custom format will catch level 3 fixes', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('ROKU [FR]', 'Matches ''Roku'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('SDTV [FR]', 'Matches SDTV.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Season Pack [FR]', 'Matches Season Pack Release Type on Sonarr', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('SHO [FR]', 'Matches ''Showtime'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Sing Along [FR]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Special Edition [FR]', 'Special editions are modified versions of movies released after the original theatrical version.

• They exist because filmmakers want to present their `true vision`, `fix problems`, or because studios want to make more money
• You''ll see them with names like `Director''s Cut`, `Extended Edition`, or creative marketing labels like `Ultimate Cut`
• A single film can have `multiple special editions` as technology improves or different creative perspectives emerge', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('STAN [FR]', 'Matches ''STAN'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('SKST [FR]', 'Matches ''SkyShowtime'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('TrueHD [FR]', 'Matches ''TrueHD'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('TrueHD (Missing) [FR]', 'Attempts to match TrueHD releases which are not labelled correctly (TRiTON, EPSiLON groups)', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('UHD Bluray [FR]', 'UHD Blu-ray is a digital optical disc format released in 2016. It stores 66GB on triple-layer discs or 100GB on quad-layer discs, compared to standard Blu-ray''s 25GB/50GB capacity. The format delivers 3840x2160 (4K) resolution video using HEVC (H.265) encoding at bitrates up to 128Mbps. All UHD Blu-rays include HDR10 support, with some releases adding Dolby Vision or HDR10+. The format uses the BT.2020 color space and 10-bit color depth, while supporting audio formats like Dolby Atmos, DTS:X, DTS-HD MA, and Dolby TrueHD. UHD Blu-ray players require HDMI 2.0a and HDCP 2.2 compliant displays to show 4K HDR content.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Upscale [FR]', 'Matches the ''Upscale'' regex pattern

Radarr Version', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('VP9 [FR]', 'Matches the ''VP9'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('VVC [FR]', 'Matches the ''VVC'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('x264 (2160p) [FR]', 'Matches ''x264'' regex pattern only when 2160p is also found. ', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('x265 [FR]', 'Matches ''x265'' regex pattern.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('x265 (Bluray) [FR]', 'Matches ''x265'' regex pattern.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('x265 (Efficient) [FR]', 'Matches ''x265'' regex pattern.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('x265 (Missing) [FR]', 'Attempts to match 2160p x265 encodes that aren''t labelled with any codec. ', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('x265 (Remux) [FR]', 'Matches ''x265'' regex pattern.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('x265 (WEB) [FR]', 'Matches ''x265'' regex pattern.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Xvid [FR]', 'Matches Xvid Regex', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Extended Edition [FR]', 'Matches extended editions separately from other special editions.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Audio Description [FR]', 'Sign Language Variations', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Nordic [FR]', 'Matches releases explicitly marked Nordic.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Dual Audio [FR]', 'Matches releases explicitly tagged as Dual Audio.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('French Original [FR]', 'Priorise les contenus dont la langue originale est le francais, sans exiger de marqueur MULTi ou VF.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('576p WEB-DL [FR]', 'Matches 576p WEB-DLs.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('1080p Bluray (Efficient) [FR]', 'Matches 1080p x264 Blurays as an Efficient movie fallback.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 720p Quality Tier 1 [FR]', 'Dictionarry-shaped FR 720p Quality Tier 1 built from TRaSH FR source tiers.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 720p Quality Tier 2 [FR]', 'Dictionarry-shaped FR 720p Quality Tier 2 built from TRaSH FR source tiers and lowered FR Global Tier 01.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 720p Quality Tier 3 [FR]', 'Dictionarry-shaped FR 720p Quality Tier 3 built from TRaSH FR source tiers and lowered FR Global Tier 02.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 1080p Balanced Tier 1 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 1080p Balanced Tier 2 [FR]', 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 1080p Compact Bluray Tier 1 [FR]', 'Dictionarry-shaped FR 1080p Compact Movie Bluray Tier 1 built from HDLight groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 1080p Compact Bluray Tier 2 [FR]', 'Dictionarry-shaped FR 1080p Compact Movie Bluray Tier 2 built from HDLight groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 1080p Compact WEB Tier 1 [FR]', 'Dictionarry-shaped FR 1080p Compact Movie WEB Tier 1 built from HDLight groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 1080p Compact WEB Tier 2 [FR]', 'Dictionarry-shaped FR 1080p Compact Movie WEB Tier 2 built from HDLight groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 1080p Bluray HEVC Tier 1 [FR]', 'Deprecated by FR 1080p Efficient source/tier split. Kept only for FK-backed metadata compatibility.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 1080p WEB-DL HEVC Tier 1 [FR]', 'Deprecated by FR 1080p Efficient source/tier split. Kept only for FK-backed metadata compatibility.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 1080p Quality Tier 1 [FR]', 'Dictionarry-shaped FR 1080p Quality Tier 1 built from TRaSH FR source tiers.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 1080p Quality Tier 2 [FR]', 'Dictionarry-shaped FR 1080p Quality Tier 2 built from TRaSH FR source tiers and lowered FR Global Tier 01.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 1080p Quality Tier 3 [FR]', 'Dictionarry-shaped FR 1080p Quality Tier 3 built from TRaSH FR source tiers and lowered FR Global Tier 02.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Balanced Bluray Tier 1 [FR]', 'Deprecated by FR 2160p Balanced source/tier split. Kept only for FK-backed metadata compatibility.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Balanced WEB Tier 1 [FR]', 'Deprecated by FR 2160p Balanced source/tier split. Kept only for FK-backed metadata compatibility.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Balanced Tier 2 [FR]', 'Dictionarry-shaped FR 2160p Balanced Tier 2 for validated stable French groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Efficient Bluray Tier 1 [FR]', 'Deprecated by FR 2160p Efficient source/tier split. Kept only for FK-backed metadata compatibility.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Efficient WEB Tier 1 [FR]', 'Deprecated by FR 2160p Efficient source/tier split. Kept only for FK-backed metadata compatibility.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Quality Tier 1 [FR]', 'Dictionarry-shaped FR 2160p Quality Tier 1 built from TRaSH FR source tiers.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Quality Tier 2 [FR]', 'Dictionarry-shaped FR 2160p Quality Tier 2 built from TRaSH FR source tiers and lowered FR Global Tier 01.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Quality Tier 3 [FR]', 'Dictionarry-shaped FR 2160p Quality Tier 3 built from TRaSH FR source tiers and lowered FR Global Tier 02.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Remux Tier 1 [FR]', 'Dictionarry-shaped FR Remux Tier 1 built from TRaSH FR Remux Tier 01.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Remux Tier 2 [FR]', 'Dictionarry-shaped FR Remux Tier 2 built from TRaSH FR Remux Tier 02.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('2160p WEB-DL (Efficient) [FR]', 'Matches 2160p WEB-DLs for Efficient profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Compact Bluray Tier 1 [FR]', 'FR 2160p Compact Bluray Tier 1 for validated 4KLight groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Compact Bluray Tier 2 [FR]', 'FR 2160p Compact Bluray Tier 2 for validated 4KLight groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Compact WEB Tier 1 [FR]', 'FR 2160p Compact WEB Tier 1 for validated 4KLight WEBRip groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Compact WEB Tier 2 [FR]', 'FR 2160p Compact WEB Tier 2 for validated 4KLight WEBRip groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HDLight [FR]', 'Matches HDLight and similar light/re-encode markers below 2160p.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('4KLight [FR]', 'Matches 4KLight and similar light/re-encode markers on 2160p releases.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('2160p WEB-DL (Balanced) [FR]', 'Matches 2160p WEB-DLs for Balanced profiles when the release group is not already covered by the FR Balanced tier.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('4KLight Bluray (Compact) [FR]', 'Matches non-tier 2160p 4KLight Bluray releases for 2160p Compact FR.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('4KLight WEBRip (Compact) [FR]', 'Matches non-tier 2160p 4KLight WEBRip releases for 2160p Compact FR.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HDLight Bluray (Compact) [FR]', 'Matches non-tier 1080p HDLight Bluray releases for 1080p Compact FR.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HDLight WEBRip (Compact) [FR]', 'Matches non-tier 1080p HDLight WEB releases for 1080p Compact FR.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('1080p WEBRip (Compact) [FR]', 'Matches non-tier 1080p WEBRip releases for Compact FR fallback.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR WEB Top Tier [FR]', 'Matches the most trusted French WEB release groups. Kept separate from FR WEB Tier 1.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR WEB Tier 1 [FR]', 'Matches trusted French WEB release groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR WEB Tier 2 [FR]', 'Matches good French WEB release groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR WEB Tier 3 [FR]', 'Matches acceptable French WEB release groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Bluray Tier 1 [FR]', 'Matches trusted French Bluray release groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Bluray Tier 2 [FR]', 'Matches good French Bluray release groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR UHD Bluray Tier 1 [FR]', 'Matches trusted French UHD Bluray release groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR UHD Bluray Tier 2 [FR]', 'Matches good French UHD Bluray release groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Light Tier 1 [FR]', 'Matches trusted French HDLight/4KLight release groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Light Tier 2 [FR]', 'Matches good French HDLight/4KLight release groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR DVD Tier 1 [FR]', 'Matches trusted French DVD release groups.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR Unknown Tier 1 [FR]', 'Matches French release groups kept without a precise source bucket yet.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 1080p Bluray HEVC [FR]', 'FR 1080p HEVC Bluray source pass without release-group condition.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 1080p WEB-DL HEVC [FR]', 'FR 1080p HEVC WEB-DL source pass without release-group condition.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Balanced WEB [FR]', '2160p WEB-DL Balanced source pass without release-group condition.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Balanced Bluray [FR]', '2160p Bluray Balanced source pass without release-group condition.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p WEB Top Tier [FR]', '2160p WEB copy of FR WEB Top Tier with 2160p and Not Remux gates.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p WEB Tier 1 [FR]', '2160p WEB copy of FR WEB Tier 1 with 2160p and Not Remux gates.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p WEB Tier 2 [FR]', '2160p WEB copy of FR WEB Tier 2 with 2160p and Not Remux gates.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p WEB Tier 3 [FR]', '2160p WEB copy of FR WEB Tier 3 with 2160p and Not Remux gates.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Bluray Tier 1 [FR]', '2160p Bluray copy of FR Bluray Tier 1 with 2160p and Not Remux gates.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Bluray Tier 2 [FR]', '2160p Bluray copy of FR Bluray Tier 2 with 2160p and Not Remux gates.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Efficient WEB h265 [FR]', '2160p WEB-DL h265 source pass for 2160p Efficient FR without release-group condition.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FR 2160p Efficient Bluray h265 [FR]', '2160p Bluray h265 source pass for 2160p Efficient FR without release-group condition.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('2160p WEBRip [FR]', 'Matches non-tier 2160p WEBRip releases for 2160p Compact FR fallback.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('IMAX [FR]', 'Matches IMAX releases as a premium framing / aspect-ratio enhancement.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('French MULTi + Team FR (INTL) [FR]', 'Matches INTL MULTi releases only when MULTi is present and the release group is one of the known French teams.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('French MULTi + Marker FR (INTL) [FR]', 'Matches INTL MULTi releases only when MULTi is followed by an explicit French marker. Useful on international trackers where MULTi alone does not guarantee French audio.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('French MultiSub + Team FR (INTL) [FR]', 'Matches INTL MultiSub releases only when MultiSub is present and the release group is one of the known French teams.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('French MultiSub + Marker FR (INTL) [FR]', 'Matches INTL MultiSub releases only when MultiSub is followed by an explicit French marker. Useful on international trackers where MultiSub alone does not guarantee French subtitles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('French Missing (INTL) [FR]', 'Matches INTL releases without a trusted French MULTi/MultiSub marker, French release group, VF, VOSTFR, VFQ or French original marker.', 0);

-- [dumpstarr] custom_formats
-- custom_formats: 146 rows
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('2.0 Stereo [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('3D [EN]', 'Matches the ''3D'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('4K Remaster [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('5.1 [EN]', 'Matches releases with 5.1 surround sound.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('7.1 [EN]', 'Matches releases with 7.1 surround sound.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('AAC [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('ABEMA [EN]', '', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('ADN [EN]', '', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('AMZN [EN]', 'Matches ''Amazon Prime'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime Baseline Groups [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime Dual Audio [EN]', 'Matches releases with both the original language as well as English.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime LQ [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime Raws [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime BD Tier 01 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime BD Tier 02 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime BD Tier 03 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime BD Tier 04 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime BD Tier 05 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime BD Tier 06 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime BD Tier 07 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime BD Tier 08 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime WEB Tier 01 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime WEB Tier 02 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime WEB Tier 03 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime WEB Tier 04 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime WEB Tier 05 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Anime WEB Tier 6 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Accessibility [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Atmos [EN]', 'Matches ''Atmos'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('ATVP [EN]', 'Matches ''Apple TV+'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('AV1 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('B&W [EN]', 'Matches the ''B&W'' and ''Colour'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Bad Multis [EN]', 'Matches releases where the multi-episode file is in the wrong order, labeled incorrectly, etc.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('LQ Release Title [EN]', 'Matches Grouos that are Banned via Release Title', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Baseline Groups [EN]', 'This format will match against groups that have a generally good reputation in terms of audio, video and file naming quality, but are not tiered according to TRaSH/Dictionarry.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('BCORE [EN]', 'Matches ''Bravia Core'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('BHDStudio [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('BR-DISK [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('CBC [EN]', '', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('CC [EN]', '', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('CR [EN]', '', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('CRAV [EN]', 'Matches ''Crave'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('CRIT [EN]', 'Matches ''Criterion Channel'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Criterion Collection [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('CWS [EN]', 'Matches ''CW Network'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DCU [EN]', '', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Dolby Digital [EN]', 'Matches ''Dolby Digital'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Dolby Digital + [EN]', 'Matches ''Dolby Digital +'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Dolby Vision [EN]', 'If desired, add this to your profiles with a score of 1000.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Dolby Vision (No HDR Fallback) [EN]', 'This custom format **blocks** WEB-DLs **with** Dolby Vision but **no** HDR fallback.

Most WEBDL from Streaming Services DO NOT have the fallback to HDR10. During playback, issues with weird colors (typically a green hue) can result when you attempt to play it on a non-Dolby Vision-compatible setup.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DSNP [EN]', 'Matches ''Disney+'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DTS [EN]', 'Matches ''DTS'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DTS-ES [EN]', 'Matches ''DTS-ES'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DTS-HD HRA [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DTS-HD HRA (WEB) [EN]', 'Matches releases with DTS-HD HRA audio that are not a WEB-DL.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DTS-HD MA [EN]', 'Matches ''DTS-HD MA'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DTS-HD MA (WEB) [EN]', 'Matches releases with DTS-HD audio that are not a WEB-DL.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DTS-X [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DTS-X (WEB) [EN]', 'Matches releases with DTS-X audio that are not a WEB-DL.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Dubs Only [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Extras [EN]', 'Matches the ''Extras'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('FUNI [EN]', '', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('GAIA [EN]', '', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Group Missing [EN]', 'Matches releases where the releases group is not defined.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('hallowed [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HBO [EN]', 'Matches ''HBO Max'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HD Streaming Boost [EN]', 'Some streaming services have HD releases that are generally better than their UHD counterparts. The HD Streaming Boost custom format increases those streaming services'' scores appropriately for HD releases. Use this in conjunction with the regular streaming service custom formats. ', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HDR [EN]', 'TRaSH HDR Format', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HDR10+ [EN]', 'If desired, add this to your profiles with a score of 100.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HLG [EN]', 'Matches the ''HLG'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HMAX [EN]', 'Matches ''Max'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HULU [EN]', 'Matches ''Hulu'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('IMAX [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('IMAX Enhanced [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Bad Source [EN]', 'This is a format that helps deny grabbing specific releases for specific shows due to issues with automation.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('iT [EN]', 'Matches ''iTunes'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('MA [EN]', 'Matches ''Movies Anywhere'' WEB-DLs.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Missing Subtitles [EN]', 'Matches release groups that do not include subtitles in their releases. This will lower the score of a release by 50 points, but lower the score to -10000 to completely avoid matched release groups with no subtitles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Multi-Audio [EN]', 'Used to grab releases with multi audio, normally the ones from CR or NF', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Multi-Episode [EN]', 'This Custom Format will recognize multi-episode releases (e.g. episodes named with ''S01E01E02''), instead of single-episode or season packs, using Sonarr''s built-in parser. Depending on your preference, you can give it a negative or positive score or skip adding it altogether.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Multi-Sub [EN]', 'Used to grab releases with multiple subtitles, normally the ones from CR or NF', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('NF [EN]', 'Matches ''Netflix'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Fake HDR [EN]', 'Matches groups who produce non-retail HDR10+ or Dolby Vision.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('PCOK [EN]', 'Matches ''Peacock'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('PLAY [EN]', 'Google TV, formerly known as Google Play Movies & TV, is a digital distribution service for movies and television series developed by Google. Launched in 2011 as part of the Google Play product line, the service offers search and discovery of video titles across multiple streaming services, including rental or purchase options, alongside watchlist features for accessing titles from eligible devices and platforms.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('PMTP [EN]', 'Matches ''Paramount+'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('PQ [EN]', 'Matches the ''PQ'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Remaster [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Repack1 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Repack2 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Repack3 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('ROKU [EN]', 'Matches ''Roku'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Scrubs 2001 Boost [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('SHO [EN]', 'Matches ''Showtime'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('SIDCA Tier 02 [EN]', 'These are groups that are typically banned, but are allowed for the LQ profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('SIDCA Tier 01 [EN]', 'These are groups that are typically banned, but are allowed for the LQ profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Sing Along [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Special Edition [EN]', 'Special editions are modified versions of movies released after the original theatrical version.

• They exist because filmmakers want to present their `true vision`, `fix problems`, or because studios want to make more money
• You''ll see them with names like `Director''s Cut`, `Extended Edition`, or creative marketing labels like `Ultimate Cut`
• A single film can have `multiple special editions` as technology improves or different creative perspectives emerge', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('STAN [EN]', 'Matches ''STAN'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Surround Sound [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('SYFY [EN]', '', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Theatrical [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('TrueHD [EN]', 'Matches ''TrueHD'' Regex Pattern and negates any other audio types that might conflict.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('TrueHD (WEB) [EN]', 'Matches releases with TrueHD audio that are not a WEB-DL.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('TrueHD Missing [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('TUBI [EN]', '', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('TVE [EN]', 'Matches against specialized releases of TV shows.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('TV Extras [EN]', 'Matches the ''Extras'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('UHD Streaming Boost [EN]', 'Some streaming services have UHD releases that are generally better than their HD counterparts. The UHD Streaming Boost custom format increases those streaming services'' scores appropriately for UHD releases. Use this in conjunction with the regular streaming service custom formats. ', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Uncensored [EN]', '', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Upscaled [EN]', 'Matches the ''Upscaled'' regex pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('v0 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('v1 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('v2 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('v3 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('v4 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('VOSTFR [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('VP9 [EN]', 'Matches the ''VP9'' Regex Pattern', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('VRV [EN]', '', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('YK [EN]', 'Matches releases from the Youku streaming service.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HD Bluray Tier 01 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HD Bluray Tier 02 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HD Bluray Tier 03 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('UHD Bluray Tier 01 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('UHD Bluray Tier 02 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('UHD Bluray Tier 03 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('WEB Tier 01 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('WEB Tier 02 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('WEB Tier 03 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('LQ [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('HONE (Bad Name) [EN]', 'Matches releases from HONE that are **not** explicitly from the HONE group.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('SIDCA Tier 03 [EN]', 'These are groups that are typically banned, but are allowed for the LQ profiles.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('MAX [EN]', 'Max, formerly and in some markets still HBO Max, is an American subscription video on-demand over-the-top streaming service. It is a proprietary unit of Warner Bros. Discovery Global Streaming & Interactive Entertainment, which is itself a division of Warner Bros. Discovery (WBD). First launched (as HBO Max) in the United States on May 27, 2020, the service offers content from the libraries of Warner Bros., Discovery Channel, HBO, CNN, Cartoon Network, Adult Swim, Animal Planet, Eurosport, and their related brands.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('ATV [EN]', 'Matches ''Apple TV'' WEB-DLs. Negates any encodes.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('WEB Scene [EN]', 'One of the few scene groups that released quality releases.', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Dumpstarr LQ Groups [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Dumpstarr LQ Title [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('SKST [EN]', 'SkyShowTime Streaming Service', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('DSCP [EN]', 'Discovery+ (pronounced "Discovery Plus"; stylized as discovery+) is an American subscription video on-demand over-the-top streaming service owned by Warner Bros. Discovery (WBD). The service focuses on factual programming drawn from the libraries of Discovery''s main channel brands, as well as original series (including spin-offs of programs from Discovery''s television networks), and other acquired content.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Bad Dual Groups [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('PBSK [EN]', 'Matches releases from the PBS Kids channel.', 1);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Not German or English [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('x265 [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Season Pack [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('Not Original Language [EN]', '', 0);
INSERT OR IGNORE INTO "custom_formats" ("name", "description", "include_in_rename") VALUES ('TheFarm [EN]', '', 0);

