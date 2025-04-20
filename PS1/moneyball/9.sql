SELECT "name", ROUND(AVG("salary"), 2)
FROM (
    SELECT * FROM "salaries"
    JOIN "teams"
    ON "salaries"."team_id"="teams"."id"
    WHERE "salaries"."year" = 2001)
GROUP BY "team_id"
ORDER BY (ROUND(AVG("salary"), 2)) ASC
LIMIT 5;
