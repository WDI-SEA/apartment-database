-- Create tables

samhawkins=# CREATE DATABASE apartment TEMPLATE template1;
CREATE DATABASE


samhawkins=# CREATE TABLE owners ( id SERIAL PRIMARY KEY,
samhawkins(# name TEXT,
samhawkins(# age INT
samhawkins(# );
CREATE TABLE

                                                 ^
samhawkins=# CREATE TABLE properties (id SERIAL PRIMARY KEY, name TEXT, units INT, owner_id INT references owners(id));
CREATE TABLE
