-- Create tables

CREATE DATABASE apartments;
CREATE TABLE owner(
    id SERIAL PRIMARY KEY,
    name TEXT,  
    age VARCHAR(3)
);
CREATE TABLE property(
    id SERIAL PRIMARY KEY,
    name TEXT,
    units VARCHAR,
    owner_id INT referneces owner(id)
);