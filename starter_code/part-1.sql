-- Create tables

CREATE DATABASE apartments TEMPLATE template0;
--had a looot of problems with this error
--ERROR:  source database "template1" is being accessed by other users
--DETAIL:  There is 1 other session using the database.

\connect apartments;

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER
);

CREATE TABLE properties (
    id SERIAL PRIMARY KEY,
    name TEXT,
    units INTEGER,
    owner_id INTEGER references owners(id)
);

--accidentally created a table called apartments
--deleted the table with DROP TABLE apartments
--found out I couldn't make the database in the first place after