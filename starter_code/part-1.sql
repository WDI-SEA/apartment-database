-- Create tables

petefitton=# CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER);



petefitton=# CREATE TABLE properties (
    id SERIAL PRIMARY KEY,
    name TEXT,
    units INTEGER,
    owner_id INTEGER REFERENCES owners(id));

