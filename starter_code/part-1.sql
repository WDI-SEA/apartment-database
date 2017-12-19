-- Create tables

Phil=# CREATE DATABASE apartments;
CREATE DATABASE
Phil=# \connect apartments
You are now connected to database "apartments" as user "Phil".
apartments=# CREATE TABLE owner (
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# age VARCHAR(15));
CREATE TABLE
apartments=# CREATE TABLE property (
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# units VARCHAR(250),
apartments(# owner_id INT REFERENCES owner(id));
CREATE TABLE


