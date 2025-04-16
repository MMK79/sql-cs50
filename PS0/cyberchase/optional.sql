SELECT "title" FROM "episodes" WHERE "air_date" LIKE '%-12-%';
SELECT "title", "air_date" FROM "episodes" WHERE "air_date" >= '%-12-01';
SELECT "title", "air_date" FROM "episodes" WHERE "air_date" LIKE '%-01-%' ORDER BY "air_date";
