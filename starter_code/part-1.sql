-- Create tables

psql 
admin=# CREATE DATABASE apartments;
admin=# \connect apartments;

apartments=# CREATE TABLE owners (
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# age INTEGER
apartments(# );

apartments=# CREATE TABLE properties (
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# units INTEGER,
apartments(# owner_id INTEGER REFERENCES owners(id)
apartments(# );
CREATE TABLE
