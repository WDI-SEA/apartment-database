-- Create tables
\connect apartments;
CREATE TABLE owners( id SERIAL PRIMARY KEY,
                     name VARCHAR(32),
                     age INT);
CREATE TABLE properties( id SERIAL PRIMARY KEY,
                         name VARCHAR(64),
                         units INT,
                         owner_id INT REFERENCES owners(id));
