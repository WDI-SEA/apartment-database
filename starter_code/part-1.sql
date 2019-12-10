-- Create tables
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name text,
    age integer
)

CREATE TABLE properties (
    id SERIAL PRIMARY KEY,
    name text,
    units integer,
    owner_id INTEGER REFERENCES owners(id)
)
