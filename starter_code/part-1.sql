-- Create tables

CREATE TABLE owner (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INT
);

CREATE TABLE property (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  units INTEGER,
  owner_id INTEGER REFERENCES owner(id)
);
