-- Create tables
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age VARCHAR(3)
);

CREATE TABLE properties (
    id SERIAL PRIMARY KEY,
    name TEXT, 
    units VARCHAR(3),
    owner_id INTEGER REFERENCES owners(id)
);

\dt 
\d owners
\d properties