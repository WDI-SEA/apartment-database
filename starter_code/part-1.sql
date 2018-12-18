-- Create tables
CREATE TABLE owner(
id SERIAL PRIMARY KEY,
name TEXT,
age SMALLINT
);

CREATE TABLE property(
id SERIAL PRIMARY KEY,
name TEXT,
units SMALLINT,
owner_id INT REFERENCES owner(id)
);
