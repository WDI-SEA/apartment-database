-- Create tables
dephillips=# CREATE DATABASE apartments;
CREATE DATABASE
dephillips=# CREATE TABLE owners (
dephillips(# id SERIAL PRIMARY KEY,
dephillips(# name TEXT,
dephillips(# age INTEGER );
CREATE TABLE
dephillips=# CREATE TABLE properties (
dephillips(# id SERIAL PRIMARY KEY,
dephillips(# name TEXT,
dephillips(# units INTEGER,
dephillips(# owner_id INTEGER REFERENCES owners(id)
dephillips(# );

