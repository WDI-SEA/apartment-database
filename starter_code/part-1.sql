-- Create tables
create database apartments;

create table owners (
id serial primary key,
name text,
age integer
);

create table properties (
id serial primary key,
name text,
units integer,
owner_id integer references owners(id)
);