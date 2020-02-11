-- Create tables
-- Create new database
CREATE DATABASE apartments;

-- Connect to new database
\connect apartments

-- Create table for owners
CREATE TABLE owners(
id SERIAL PRIMARY KEY,
name TEXT,
age INTEGER);

-- Create table for properties
CREATE TABLE properties(
id SERIAL PRIMARY KEY,
name TEXT,
units INTEGER,
owner_id INTEGER REFERENCES owners(id));


