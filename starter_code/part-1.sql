-- Create tables
CREATE TABLE owner ( id SERIAL PRIMARY KEY, name TEXT, age INTEGER );



 CREATE TABLE properties ( id SERIAL PRIMARY KEY, name TEXT, units INT references owner (id) );

