SELECT "first_name", "last_name" FROM (
    SELECT * FROM (
        SELECT "p"."first_name", "p"."last_name", "p"."id"
        FROM
        "players" AS "p"
        JOIN 
        "salaries" AS "s"
        ON "s"."player_id"="p"."id"
        JOIN
        "performances" AS "r"
        ON "r"."player_id"="p"."id" AND "r"."year"="s"."year"
        WHERE
        "r"."year" = 2001
        AND
        "r"."RBI" > 0
        GROUP BY "p"."id"
        ORDER BY ("s"."salary"/"r"."RBI"), "p"."first_name", "p"."last_name"
        LIMIT 10
    ) AS "RBI"
    INTERSECT
    SELECT * FROM (
        SELECT "p"."first_name", "p"."last_name", "p"."id"
        FROM
        "players" AS "p"
        JOIN 
        "salaries" AS "s"
        ON "s"."player_id"="p"."id"
        JOIN
        "performances" AS "r"
        ON "r"."player_id"="p"."id" AND "r"."year"="s"."year"
        WHERE
        "r"."year" = 2001
        AND
        "r"."H" > 0
        GROUP BY "p"."id"
        ORDER BY ("s"."salary"/"r"."H"), "p"."first_name", "p"."last_name"
        LIMIT 10) AS "hit"
    ORDER BY "id"
)
