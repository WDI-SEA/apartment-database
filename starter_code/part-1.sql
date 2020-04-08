-- Create tables


CREATE DATABASE apartments


apartments=# CREATE TABLE owners (
apartments(# id SERIAL PRIMARY KEY, 
apartments(# name TEXT,
apartments(# age INT
apartments(# );


apartments=# CREATE TABLE properties (    
apartments=# id SERIAL PRIMARY KEY,        
apartments=# name TEXT,                                                                                     apartments(# units INT,
apartments(# owner_id INT references owners(id)
apartments(# );