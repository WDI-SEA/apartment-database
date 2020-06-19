-- Create tables

CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  name_owner TEXT,
  age DECIMAL,
);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY,
  name_property TEXT,
  units DECIMAL,
  owner_id INTEGER REFERENCES owners(id)
);
