-- ### Part 1: Create Tables
--
-- Place your answers in `part-1.sql`.
--
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

create database apartments;
create table owner (id serial, name varchar(30), age integer);
create table property (id serial, name varchar(50), units integer, owner_id integer references owner(id);;
