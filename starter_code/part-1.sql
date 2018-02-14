-- Create tables
CREATE DATABASE appartments;

CREATE TABLE owner (id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age NUMERIC);

CREATE TABLE property (id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  units NUMERIC,
  owner_id INTEGER REFERENCES owner(id));
