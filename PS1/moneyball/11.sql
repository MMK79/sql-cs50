select "p"."first_name", "p"."last_name", ("s"."salary"/SUM("r"."H")) AS "dollers per hit"
FROM
"players" AS "p"
JOIN 
"salaries" as "s"
ON "p"."id"="s"."player_id"
JOIN
"performances" as "r"
ON "p"."id"="r"."player_id" AND "r"."year"="s"."year"
WHERE
"r"."H" > 0
AND
"s"."year" = 2001
GROUP BY "p"."id"
ORDER BY "dollers per hit", "first_name", "last_name"
LIMIT 10;
