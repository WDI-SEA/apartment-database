Create Database "apartments";

\connect apartments
-- Create tables

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name VARCHAR(10),
    age INTEGER
);

CREATE TABLE properties (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    units INTEGER,
    owner_id INTEGER
);