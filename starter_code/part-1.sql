-- Create tables

CREATE DATABASE apartments;
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name TEXT, 
    age VARCHAR(3)
);

CREATE TABLE properties (
    id SERIAL PRIMARY KEY, 
    name TEXT, 
    units INTEGER,
    owner_id INTEGER,
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);

