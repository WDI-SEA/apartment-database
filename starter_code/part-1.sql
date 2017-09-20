-- Create tables
apartments= CREATE TABLE owner (       
    id SERIAL PRIMARY KEY, 
    name TEXT,             
    age INTEGER  
    );

apartments=# CREATE TABLE property (
apartments(# name TEXT,
apartments(# units INTEGER,
apartments(# owner_id INTEGER,
apartments(# FOREIGN KEY(owner_id) REFERENCES owner(id)
apartments(# );