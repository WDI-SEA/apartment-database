Create Database "apartments";

\connect apartments

-- Create tables
CREATE TABLE "owners" (
    "id" integer NOT NULL,
    "name" text NOT NULL,
    "age" integer NOT NULL,
    Constraint "owners_id_pkey" PRIMARY KEY ("id")
);

CREATE TABLE "properties" (
    "id" integer NOT NULL,
    "name" text,
    "units" integer,
    Constraint "properties_id_pkey" PRIMARY KEY ("id")
);