-- Create tables
CREATE TABLE owners (
id SERIAL PRIMARY KEY,
name TEXT,
age INTEGER
);

CREATE TABLE properties (
id SERIAL PRIMARY KEY,
name TEXT,
units INTEGER,
owners_id INTEGER
);

