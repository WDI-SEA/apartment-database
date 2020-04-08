-- Create tables
CREATE TABLE owner (id SERIAL PRIMARY KEY, name TEXT, age INTEGER);
CREATE TABLE property (id SERIAL PRIMARY KEY, name VARCHAR(20), units INTEGER, owner_id INT references owner(id));
