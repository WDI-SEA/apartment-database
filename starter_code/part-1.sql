-- Create Database
-- CREATE DATABASE apartments

-- Create tables
CREATE TABLE owner (
  id SERIAL PRIMARY KEY,
  name TEXT,
  age INTEGER
);


CREATE TABLE owner (
  id SERIAL PRIMARY KEY,
  name TEXT,
  units INTEGER,
  owner_id INTEGER references owner(id)
);