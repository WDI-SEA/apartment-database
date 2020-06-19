-- Create tables

apartments=# CREATE TABLE owners(
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# age INTEGER
apartments(# );
CREATE TABLE

apartments=# CREATE TABLE properties(
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# units INTEGER,
apartments(# owner_id INT references owners(id)
apartments(# );
CREATE TABLE


