CREATE TABLE "airlines" (
    "name" TEXT NOT NULL,
    "concourse" TEXT CHECK("concourse" IN ("A", "B", "C", "D", "E", "F", "T")),
    "id" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "airports" (
    "name" TEXT NOT NULL,
    "id" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "passengers" (
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    "id" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "flights" (
    "flight_number" INTEGER NOT NULL,
    "airline_id" INTEGER NOT NULL,
    "deport_airport" TEXT NOT NULL,
    "heading_airpot" TEXT NOT NULL,
    "departure_time" NUMERIC NOT NULL,
    "arrival_time" NUMERIC NOT NULL,
    "id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("airline_id") REFERENCES "arilines"("id")
);

CREATE TABLE "check-ins" (
    "datetime" NUMERIC DEFAULT CURRENT_TIMESTAMP,
    "flight_id" INTEGER,
    "passenger_id" INTEGER,
    FOREIGN KEY("flight_id") REFERENCES "flights"("id"),
    FOREIGN KEY("passenger_id") REFERENCES "passengers"("id")
);
