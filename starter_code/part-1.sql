-- Create tables


michelaiacobucci=# CREATE DATABASE arpartments;
CREATE DATABASE
michelaiacobucci=# CREATE TABLE owners;
ERROR:  syntax error at or near ";"
LINE 1: CREATE TABLE owners;
                           ^
michelaiacobucci=# CREATE TABLE properties;
ERROR:  syntax error at or near ";"
LINE 1: CREATE TABLE properties;
                               ^
michelaiacobucci=# CREATE TABLE 'owners';
ERROR:  syntax error at or near "'owners'"
LINE 1: CREATE TABLE 'owners';
                     ^
michelaiacobucci=# CREATE TABLE owners
michelaiacobucci-# ;
ERROR:  syntax error at or near ";"
LINE 2: ;
        ^
michelaiacobucci=# CREATE TABLE owners (
michelaiacobucci(# id SERIAL PRIMARY KEY,
michelaiacobucci(# name TEXT,
michelaiacobucci(# age INTEGER
michelaiacobucci(# );
CREATE TABLE
michelaiacobucci=# CREATE TABLE properties (                                                    
id SERIAL PRIMARY KEY,                                                                                  
name TEXT,                                                                                             
units INTEGER,                                                                                          
owner_id INT references  owners(id)                                                                     
);
CREATE TABLE