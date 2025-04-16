SELECT "english_title", "artist", "contrast" AS 'Highest Contrast'
FROM "views" WHERE "artist" = 'Hokusai' ORDER BY "contrast" DESC LIMIT 1;
SELECT "english_title", "artist", "contrast" AS 'Highest Contrast'
FROM "views" ORDER BY "contrast" DESC LIMIT 1;
