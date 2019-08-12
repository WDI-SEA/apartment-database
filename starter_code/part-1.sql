-- Create tables

CREATE DATABASE apartments;

CREATE TABLE owner (
owner id SERIAL PRIMARY KEY,
name VARCHAR(32),
age INT
);

CREATE TABLE property (
property_id SERIAL PRIMARY KEY,
name VARCHAR(32),
units INT,
REFERENCE KEY(owner_id) REFERENCES owner(owner_id)
);





