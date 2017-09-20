-- Create tables

You are now connected to database "apartments" as user "willylikestokayak".
apartments=# CREATE TABLE owner(
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# age INTEGER
apartments(# );
CREATE TABLE
apartments=# CREATE TABLE property(
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# units INTEGER,
apartments(# owner_id INTEGER REFERENCES owner(id)
apartments(# );
CREATE TABLE
apartments=# \dt
               List of relations
 Schema |   Name   | Type  |       Owner       
--------+----------+-------+-------------------
 public | owner    | table | willylikestokayak
 public | property | table | willylikestokayak
(2 rows)


