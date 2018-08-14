-- Create tables
CREATE DATABASE apartments;
\connect apartments;
--create schema owner;

create table owner(id, name, age);
create table property(id, name, units, owner_id);

