-- Create tables

josh=# CREATE TABLE owners (
josh(# id SERIAL PRIMARY KEY,
josh(# name TEXT,
josh(# age INTEGER
josh(# );
CREATE TABLE


josh=# CREATE TABLE properties (
josh(# id SERIAL PRIMARY KEY,
josh(# name TEXT, 
josh(# units INTEGER, 
josh(# owner_id INTEGER REFERENCES owners(id)
josh(# );
CREATE TABLE