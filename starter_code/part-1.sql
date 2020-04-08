-- Create tables
CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  name TEXT,
  age VARCHAR(15)
);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY,
  name TEXT,
  units varchar(15),
  owner_id SERIAL PRIMARY KEY
);
