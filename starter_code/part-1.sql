-- Create tables

\connect apartments;

DROP TABLE IF EXISTS owner CASCADE;
DROP TABLE IF EXISTS property CASCADE;

CREATE TABLE owner (
    id SERIAL PRIMARY KEY,
    name text NOT NULL,
    age integer NOT NULL
);

CREATE TABLE property (
    id SERIAL PRIMARY KEY,
    name text NOT NULL,
    units integer NOT NULL,
    owner_id integer NOT NULL
);