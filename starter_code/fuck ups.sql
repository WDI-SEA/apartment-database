create table properties (
id serial primary key,
name text,
units integer,
owner_id INTEGER REFERENCES owner(id)