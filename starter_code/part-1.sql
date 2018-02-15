-- Create tables
-- CREATE DATABASE apartments;

-- apartments=# CREATE TABLE owner (
-- apartments(# id SERIAL PRIMARY KEY,
-- apartments(# name text,    ------------- //oops text should be TEXT
-- apartments(# age NUMERIC);

-- apartments=# CREATE TABLE property (
-- apartments(# id SERIAL PRIMARY KEY,
-- apartments(# name varchar(50),
-- apartments(# units INTEGER,
-- apartments(# owner_id INTEGER REFERENCES owner(id));
