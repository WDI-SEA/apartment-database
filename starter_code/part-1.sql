-- Create tables

--Creating owner table
CREATE TABLE owner (id serial, name text, age int);


--Creating property term
CREATE TABLE property (id serial, name text, units int, owner_id int);

