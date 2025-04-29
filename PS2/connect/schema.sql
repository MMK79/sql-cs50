CREATE TABLE "schools" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "founded_year" INTEGER NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "user-user follow connections" (
    "user_id" INTEGER,
    "follow_id" INTEGER NOT NULL,
    FOREIGN KEY("user_id") REFERENCES "users"("id")
);

CREATE TABLE "user-user following connections" (
    "user_id" INTEGER,
    "following_id" INTEGER NOT NULL,
    FOREIGN KEY("user_id") REFERENCES "users"("id")
);

CREATE TABLE "user-company connections" (
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start_date" NUMERIC NOT NULL,
    "end_date" NUMERIC NOT NULL,
    "title" TEXT NOT NULL,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);

CREATE TABLE "user-school connections" (
    "user_id" INTEGER NOT NULL,
    "school_id" INTEGER NOT NULL,
    "end_date" NUMERIC NOT NULL,
    "degree_type" TEXT NOT NULL,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);
