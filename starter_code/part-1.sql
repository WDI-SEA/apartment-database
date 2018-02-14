-- Create tables

danheyward=# \c apartments
psql (9.6.7, server 10.2)
WARNING: psql major version 9.6, server major version 10.
         Some psql features might not work.
You are now connected to database "apartments" as user "danheyward".
apartments=# CREATE TABLE owner (
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# age VARCHAR(3));
CREATE TABLE
apartments=# CREATE TABLE property (
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# units VARCHAR(4),
apartments(# owner_id INTEGER REFERENCES owner(id));
CREATE TABLE
