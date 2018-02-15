-- Create tables

apartments=# CREATE TABLE owner (
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# age INTEGER);

apartments=# CREATE TABLE property (
apartments(# id serial primary key,
apartments(# name VARCHAR(50),
apartments(# units INTEGER,
apartments(# owner_id INTEGER REFERENCES owner(id) );

apartments=# ALTER TABLE owner
apartments-# RENAME TO owners
apartments-# ;

apartments=# ALTER TABLE property
apartments-# RENAME TO properties;
