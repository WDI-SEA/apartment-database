-- Create database and connect
CREATE DATABASE apartments
\connect apartments

-- Create tables
CREATE TABLE owner (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	age INTEGER
);

CREATE TABLE property (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	units INTEGER,
	owner_id INTEGER REFERENCES owner(id));