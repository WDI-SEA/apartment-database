-- Create tables


CREATE TABLE owner (id SERIAL PRIMARY KEY, name VARCHAR(32), age INTEGER);




CREATE TABLE property (
id SERIAL PRIMARY KEY,
name VARCHAR(32),
units INTEGER,
owner_id INTEGER);
