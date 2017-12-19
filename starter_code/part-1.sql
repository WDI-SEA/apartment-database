-- Create tables
CREATE TABLE owner (
id SERIAL PRIMARY KEY,
name VARCHAR(255),
age INT);


CREATE TABLE property (
id SERIAL PRIMARY KEY,
name VARCHAR(255),
units INT,
owner_id INT references owner(id));
