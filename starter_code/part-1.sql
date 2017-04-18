-- Create tables
CREATE TABLE owner (
  id SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER
);

CREATE TABLE property (
 owner_id INTEGER,
 id SERIAL PRIMARY KEY,
 name TEXT,
 units INTEGER
);
