-- Create tables
-- CREATE DATABASE apartments;

\connect apartments;

DROP TABLE IF EXISTS owner CASCADE;
DROP TABLE IF EXISTS property CASCADE;

-- - The owners table should consist of:
--   + `id` (this should be the primary key as well as a unique number that increments automatically)
--   + `name` - name of owner
--   + `age` - age of owner
-- - The properties table should consist of:
--   + `id` (this should be the primary key as well as a unique number that increments automatically)
--   + `name` - name of property
--   + `units` - number of units
--   + `owner_id` - reference to owner table

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

SELECT * FROM owner;

\db apartments;
