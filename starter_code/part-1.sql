-- Create tables

moviedb=# CREATE DATABASE apartments;
CREATE DATABASE
moviedb=# \c apartments
You are now connected to database "apartments" as user "joe".
apartments=# CREATE TABLE owner (
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# age INTEGER
apartments(# );
CREATE TABLE
apartments=# CREATE TABLE property (
apartments(# id SERIAL PRIMARY KEY,
apartments(# name TEXT,
apartments(# units INTEGER,
apartments(# owner_id INTEGER FOREIGN KEY
apartments(# );
ERROR:  syntax error at or near "FOREIGN"
LINE 5: owner_id INTEGER FOREIGN KEY
                         ^
apartments=# CREATE TABLE property (
id SERIAL PRIMARY KEY,
name TEXT,
units INTEGER,
owner_id FOREIGN KEY
);
ERROR:  syntax error at or near "FOREIGN"
LINE 5: owner_id FOREIGN KEY
                 ^
apartments=# CREATE TABLE property (
id SERIAL PRIMARY KEY,
name TEXT,
units INTEGER,
owner_id int FOREIGN KEY REFERENCES property(id)
);
ERROR:  syntax error at or near "FOREIGN"
LINE 5: owner_id int FOREIGN KEY REFERENCES property(id)
                     ^
apartments=# CREATE TABLE property (
id SERIAL PRIMARY KEY,
name TEXT,
units INTEGER,
owner_id int FOREIGN KEY REFERENCES owner(id)
);
ERROR:  syntax error at or near "FOREIGN"
LINE 5: owner_id int FOREIGN KEY REFERENCES owner(id)
                     ^
apartments=# CREATE TABLE property (
id SERIAL PRIMARY KEY,
name TEXT,
units INTEGER,
FOREIGN KEY (owner_id) REFERENCES owner(id)
);
ERROR:  column "owner_id" referenced in foreign key constraint does not exist
apartments=# CREATE TABLE property (
id SERIAL PRIMARY KEY,
name TEXT,
units INTEGER,
FOREIGN KEY (owner_id) REFERENCES owner (id)
);
ERROR:  column "owner_id" referenced in foreign key constraint does not exist
apartments=# CREATE TABLE property (
id SERIAL PRIMARY KEY,
name TEXT,
units INTEGER,
owner_id INTEGER
);
CREATE TABLE
apartments=# FOREIGN KEY (owner_id) REFERENCES owner (id);
ERROR:  syntax error at or near "FOREIGN"
LINE 1: FOREIGN KEY (owner_id) REFERENCES owner (id);
        ^
apartments=# 
