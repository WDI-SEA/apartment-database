-- Create tables

CREATE TABLE owner(name TEXT, age INTEGER, id SERIAL PRIMARY KEY);

CREATE TABLE apartment (id SERIAL PRIMARY KEY, name TEXT, units INTEGER, owner_id INTEGER references owner(id));


