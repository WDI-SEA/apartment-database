-- Create tables
\connect apartments;

CREATE TABLE owner (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER
);

CREATE TABLE property (
    id SERIAL PRIMARY KEY,
    name TEXT,
    units INTEGER,
    owner_id INTEGER REFERENCES owner(id)
);

