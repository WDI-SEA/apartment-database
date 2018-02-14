-- Create tables
-- The owners table should consist of:
-- id (this should be the primary key as well as a unique number that increments automatically)
-- name - name of owner
-- age - age of owner
-- The properties table should consist of:
-- id (this should be the primary key as well as a unique number that increments automatically)
-- name - name of property
-- units - number of units
-- owner_id - reference to owner table
-- Remember to create a foreign key constraint that references the owners table

emilyhannan=# CREATE DATABASE apartments;
emilyhannan=# \c apartments;
apartments=# CREATE TABLE owners (id SERIAL PRIMARY KEY, name TEXT, age INTEGER);
apartments=# CREATE TABLE properties (id SERIAL, name VARCHAR(50), units INTEGER, owner_id INTEGER REFERENCES owners(id));
