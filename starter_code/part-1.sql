-- -- Create tables

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

CREATE TABLE owner(id SERIAL PRIMARY KEY, name TEXT, age INTEGER);
CREATE TABLE propery(id SERIAL PRIMARY KEY, name TEXT, units INTEGER, owner_id INTEGER REFERENCES owner(id));