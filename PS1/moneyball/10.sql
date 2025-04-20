SELECT "p"."first_name", "p"."last_name", "s"."salary", "r"."HR", "r"."year"
FROM "players" AS "p"
JOIN
"performances" AS "r"
ON "r"."player_id" = "s"."player_id"
JOIN
"salaries" as "s"
ON "s"."player_id"="p"."id" AND "r"."year"="s"."year"
ORDER BY "p"."id", "s"."year" DESC, "r"."HR" DESC, "s"."salary" DESC;
