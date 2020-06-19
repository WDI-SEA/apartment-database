-- Create tables
CREATE TABLE properties ( 
    id SERIAL PRIMARY KEY, 
    name TEXT,  
    units INTEGER, 
    owner_id INT references owner(id)
);
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INT,
);

