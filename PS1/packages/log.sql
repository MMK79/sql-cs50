
-- *** The Lost Letter ***

-- Find the ID of the Sender location
SELECT "address", "id" FROM "addresses"
WHERE "address" LIKE '900 Somerville Avenue';
-- Find the ID of the Reciver location
SELECT "address", "id" FROM "addresses"
WHERE "address" LIKE '2 Fin%';
-- Find if the package is picked up from this address yet or not
SELECT "action" FROM "scans"
WHERE "address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" LIKE '900 Somerville Avenue'
);
-- Now we know that we picked package from this place multiple time but when?
SELECT "action", "timestamp" FROM "scans"
WHERE "address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" LIKE '900 Somerville Avenue'
);
-- Check the Reciver 
SELECT "action", "timestamp" FROM "scans"
WHERE "address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" LIKE '900 Somerville Avenue'
);
-- Find which packages/timestamp should I check
SELECT "address_id","action", "timestamp" FROM "scans"
WHERE "address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" LIKE '900 Somerville Avenue'
)
UNION
SELECT "address_id", "action", "timestamp" FROM "scans"
WHERE "address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" LIKE '2 Fin%'
)
ORDER BY "timestamp";
-- Find the package id
SELECT "package_id" FROM "scans"
WHERE "timestamp" = '2023-07-11 19:33:55.241794' OR "timestamp" = '2023-09-10 20:01:41.833214';
-- Check the package content
SELECT "id", "contents" FROM "packages"
WHERE "id" IN (
    SELECT "package_id" FROM "scans"
    WHERE "timestamp" = '2023-07-11 19:33:55.241794' OR "timestamp" = '2023-09-10 20:01:41.833214'
);
-- Found the package sort the results for it
SELECT * FROM "scans"
WHERE "package_id" = 384;
-- I could just found the package base on the content that I was told
SELECT * FROM "packages"
WHERE "contents" LIKE "%letter";
-- And then find letters that came from that location
SELECT * FROM "packages"
WHERE "contents" LIKE "%letter"
AND
"from_address_id" IN (
    SELECT "id" FROM "addresses"
    WHERE "address" LIKE '900 Somerville Avenue'
);
-- find the type of address_id = 854
SELECT "type", "address" FROM "addresses"
WHERE "id" = 854;

-- *** The Devious Delivery ***

-- there is no from address, duck
SELECT "id", "contents" FROM "packages"
WHERE "contents" LIKE "%duck%"
AND
"from_address_id" IS NULL;
-- check scan table
SELECT * FROM "scans"
WHERE "package_id" = (
    SELECT "id" FROM "packages"
    WHERE "contents" LIKE "%duck%"
    AND
    "from_address_id" IS NULL
);
-- find the address by the address id where the package dropped
SELECT * FROM "addresses"
WHERE "id" = (
    SELECT "address_id" FROM "scans"
    WHERE "package_id" = (
        SELECT "id" FROM "packages"
        WHERE "contents" LIKE "%duck%"
        AND
        "from_address_id" IS NULL
    )
    AND
    "action" = 'Drop'
);

-- *** The Forgotten Gift ***

-- send address = 109 tileston street
SELECT * FROM "addresses"
WHERE "address" LIKE '109 tileston street';
-- found from_address_id
SELECT * FROM "packages"
WHERE "from_address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" LIKE '109 tileston street'
);
-- found the package id
SELECT * FROM "scans"
WHERE "package_id" = (
    SELECT "id" FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id" FROM "addresses"
        WHERE "address" LIKE '109 tileston street'
    )
);
-- found the driver id
SELECT "name" FROM "drivers"
WHERE "id" IN (
    SELECT "driver_id" FROM "scans"
    WHERE "package_id" = (
        SELECT "id" FROM "packages"
        WHERE "from_address_id" = (
            SELECT "id" FROM "addresses"
            WHERE "address" LIKE '109 tileston street'
        )
    )
    ORDER BY "timestamp" DESC
    LIMIT 1
);
