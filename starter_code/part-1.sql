-- Create tables

CREATE DATABASE apartments
stan_staton-# ;
CREATE DATABASE
stan_staton=# \c apartments
You are now connected to database "apartments" as user "stan_staton".
apartments=# CREATE TABLE owners (
apartments(# id SERIAL PRIMARY KEY,
apartments(# name VARCHAR(32),
apartments(# age INT);
CREATE TABLE
apartments=# CREATE TABLE properties (
apartments(# id SERIAL PRIMARY KEY,
apartments(# name VARCHAR(32),
apartments(# units INT,
apartments(# owner_id INT);