Password for user postgres:
psql (12.3)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# create database apartments
postgres-# ;
CREATE DATABASE
postgres=# \l
                                                 List of databases
    Name    |  Owner   | Encoding |          Collate           |           Ctype            |   Access privileges
------------+----------+----------+----------------------------+----------------------------+-----------------------
 advanced   | postgres | UTF8     | English_United States.1252 | English_United States.1252 |
 apartments | postgres | UTF8     | English_United States.1252 | English_United States.1252 |
 booktown   | postgres | UTF8     | English_United States.1252 | English_United States.1252 |
 carmen     | postgres | UTF8     | English_United States.1252 | English_United States.1252 |
 movies     | postgres | UTF8     | English_United States.1252 | English_United States.1252 |
 postgres   | postgres | UTF8     | English_United States.1252 | English_United States.1252 |
 template0  | postgres | UTF8     | English_United States.1252 | English_United States.1252 | =c/postgres          +
            |          |          |                            |                            | postgres=CTc/postgres
 template1  | postgres | UTF8     | English_United States.1252 | English_United States.1252 | =c/postgres          +
            |          |          |                            |                            | postgres=CTc/postgres
 world      | postgres | UTF8     | English_United States.1252 | English_United States.1252 |
(9 rows)


postgres=# \connect apartments
You are now connected to database "apartments" as user "postgres".
apartments=# create table owners (
apartments(# id serial primary key,
apartments(# name text,
apartments(# age integer
apartments(# );
CREATE TABLE
apartments=# create table properties (
apartments(# id serial primary key,
apartments(# name text,
apartments(# units integer,
apartments(# owner_id INTEGER REFERENCES owners(id)
CREATE TABLE
apartments=#