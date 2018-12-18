CREATE DATABASE apartments
\connect apartments
CREATE TABLE owners(
id SPECIAL PRIMARY KEY,
name TEXT,
age INTEGER,
);
\ dt 
CREATE TABLE properties (
id SPECIAL PRIMARY KEY,
name TEXT,
units INTEGER,
owner_id refrences (owners)
);