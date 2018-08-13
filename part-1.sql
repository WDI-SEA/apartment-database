-- The owners table should consist of:
-- id (this should be the primary key as well as a unique number that increments automatically)
-- name - name of owner
-- age - age of owner

CREATE DATABASE apartments;

CREATE TABLE owner (
id SERIAL PRIMARY KEY,
name varchar(255),
age integer);

-- The properties table should consist of:
-- id (this should be the primary key as well as a unique number that increments automatically)
-- name - name of property
-- units - number of units
-- owner_id - reference to owner table
-- Remember to create a foreign key constraint that references the owners table

CREATE TABLE properties (
id SERIAL PRIMARY KEY,
name varchar(255),
units integer,
owner_id integer);

ALTER TABLE properties
ADD CONSTRAINT owner_id
FOREIGN KEY (owner_id)
REFERENCES owner(id);