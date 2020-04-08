-- Create tables

CREATE TABLE owners (id SERIAL PRIMARY KEY, name TEXT, age INTEGER);
CREATE TABLE property (id SERIAL PRIMARY KEY, name TEXT, units INTEGER, owners_id INT references owners(id));