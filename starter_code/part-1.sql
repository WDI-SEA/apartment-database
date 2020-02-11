-- Create tables
-- Place your answers in part-1.sql.

-- The owners table should consist of:

-- id (this should be the primary key as well as a unique number that increments automatically)

-- name - name of owner

-- age - age of owner

-- The properties table should consist of:

-- id (this should be the primary key as well as a unique number that increments automatically)

-- name - name of property

-- units - number of units

-- owner_id - reference to owner table
CREATE DATABASE apartments;

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER
);

CREATE TABLE properties (
    id SERIAL PRIMARY KEY,
    name TEXT,
    units INTEGER,
    owner_id INTEGER
);
