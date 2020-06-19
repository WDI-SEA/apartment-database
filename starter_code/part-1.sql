-- Create tables
zackbarovsky=# CREATE DATABASE apartments;
CREATE DATABASE
zackbarovsky=# \c apartments 
You are now connected to database "apartments" as user "zackbarovsky".

apartments=# CREATE TABLE owners (
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# age NUMERIC
apartments(# );
CREATE TABLE
apartments=# \d owners

apartments=# CREATE TABLE properties (
id SERIAL PRIMARY KEY,
name TEXT,
units NUMERIC,
owner_id INT references owners(id) 
);
