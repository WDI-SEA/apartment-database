Create Database "apartments";

\connect apartments

-- Create tables
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    age INTEGER NOT NULL,
);

CREATE TABLE "properties" (
    id INTEGER NOT NULL,
    property_name VARCHAR(30) NOT NULL,
    units INTEGER,
    owner_id BEGIN REFERENCES owners (id),
    UNIQUE(owner_id)
);