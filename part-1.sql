CREATE TABLE (id SERIAL PRIMARY KEY, name TEXT, age INTEGER);

CREATE TABLE property (id SERIAl PRIMARY KEY, name TEXT, units INTEGER,
    owner_id INTEGER references owner(id))
