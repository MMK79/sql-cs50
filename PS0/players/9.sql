SELECT "first_name", "last_name" FROM "players"
WHERE "final_game" > '2021-12-31' AND "final_game" < '2023-01-01'
ORDER BY "first_name", "last_name";
