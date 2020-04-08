-- Create tables
royceubando=# CREATE DATABASE apartmentdatabase;

royceubando=# CREATE TABLE owners(
royceubando(# id SERIAL PRIMARY KEY,
royceubando(# name TEXT,
royceubando(# age INTEGER
royceubando(# );

royceubando-# CREATE TABLE properties(
royceubando(# id SERIAL PRIMARY KEY,
royceubando(# name TEXT,
royceubando(# units INTEGER,
royceubando(# owner_id, INTEGER
royceubando(# );
