-- Create tables
\connect apartments;

CREATE TABLE owner (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER --or varchar(3)
);

CREATE TABLE property (
    id SERIAL PRIMARY KEY,
    name TEXT,
    units INTEGER, --or varchar
    owner_id INTEGER REFERENCES owner(id)
);

