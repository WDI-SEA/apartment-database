-- # Apartment Database

-- As you do this be thinking of what you are trying to do:
-- --CREATING
-- --READING
-- --UPDATING
-- --DESTROING

-- - Create a database called `apartments`
-- - Using this database, create two tables, one for `owner`s and one for `property`s (table names shoud be lowercase and singular)
-- - Keep this relationship in mind when designing your schema:
--   + **One owner can have many properties**

-- ### Part 1: Create Tables

-- Place your answers in `part-1.sql`.

-- - The owners table should consist of:
--   + `id` (this should be the primary key as well as a unique number that increments automatically)
--   + `name` - name of owner
--   + `age` - age of owner
-- - The properties table should consist of:
--   + `id` (this should be the primary key as well as a unique number that increments automatically)
--   + `name` - name of property
--   + `units` - number of units
--   + `owner_id` - reference to owner table
--     + Remember to create a foreign key constraint that references the owners table
-- -- Create tables
------------------------------------------------------
--Step: 1
CREATE TABLE owner (-- -owner table: 	
id SERIAL PRIMARY KEY,--   id (this should be the primary key as well as a unique number that increments automatically)
name TEXT,--   name - name of owner
age INTEGER--   age - age of owner
);

CREATE TABLE property (-- - properties: 
id SERIAL PRIMARY KEY,--   id (this should be the primary key as well as a unique number that increments automatically)
name TEXT,--   name - name of property
units INTEGER,--   units - number of units
owner_id INTEGER REFERENCES owner(id)--   owner_id - reference to owner table
);

