-- Create tables
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INT,
);

CREATE TABLE properties (
    id SERIAL,
    name TEXT,
    units INT,
    owner_id INT REFERENCES owners(id)
);
