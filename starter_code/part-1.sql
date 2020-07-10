-- Create tables

paulpadian=# CREATE DATABASE apartments;
CREATE DATABASE
paulpadian=# CREATE TABLE owners;
ERROR:  syntax error at or near ";"
LINE 1: CREATE TABLE owners;
                           ^
 CREATE TABLE owners(
 id SERIAL PRIMARY KEY,
 name TEXT,
 age INTEGER);
CREATE TABLE
CREATE TABLE properties(
 id SERIAL PRIMARY KEY,
 name TEXT, 
 units INTEGER,
 owner_id INTEGER);
CREATE TABLE



