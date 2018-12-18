CREATE DATABASE apartments


qlittle=# CREATE TABLE owner (id SERIAL PRIMARY KEY, name TEXT, age INTEGER);
CREATE TABLE
qlittle=# CREATE TABLE property (id SERIAL PRIMARY KEY, name TEXT, units INTEGER, owner_id INT references owner(id));
CREATE TABLE
-- Create tables

