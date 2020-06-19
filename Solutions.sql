Last login: Thu Jun 18 16:26:45 on ttys000
/Applications/Postgres.app/Contents/Versions/12/bin/psql -p5432 "booktown"
--------------------------------------------------------------------------------
~ » /Applications/Postgres.app/Contents/Versions/12/bin/psql -p5432 "booktown"
psql (12.3)
Type "help" for help.

booktown=# \d




















booktown=# \d customers
               Table "public.customers"
   Column   |  Type   | Collation | Nullable | Default 
------------+---------+-----------+----------+---------
 id         | integer |           | not null | 
 last_name  | text    |           |          | 
 first_name | text    |           |          | 
Indexes:
    "customers_pkey" PRIMARY KEY, btree (id)

booktown=# ^D\q
----------------------------------------------------------------------------------------------------------------------------------------------------------------
~ » cd Desktop/seir_526/                                                                                                                salmanmalik@Salmans-Air
----------------------------------------------------------------------------------------------------------------------------------------------------------------
~/Desktop/seir_526 » ls                                                                                                                 salmanmalik@Salmans-Air
homework project1 units
----------------------------------------------------------------------------------------------------------------------------------------------------------------
~/Desktop/seir_526 » cd homework                                                                                                        salmanmalik@Salmans-Air
----------------------------------------------------------------------------------------------------------------------------------------------------------------
~/Desktop/seir_526/homework » ls                                                                                                        salmanmalik@Salmans-Air
cssHW               debugHW             microsoftMock       reddit              simCity             tempHW              ticTacToe           tictactoe solutions
----------------------------------------------------------------------------------------------------------------------------------------------------------------
~/Desktop/seir_526/homework » mkdir sql-apartments                                                                                      salmanmalik@Salmans-Air
----------------------------------------------------------------------------------------------------------------------------------------------------------------
~/Desktop/seir_526/homework » cd sql-apartments                                                                                         salmanmalik@Salmans-Air
----------------------------------------------------------------------------------------------------------------------------------------------------------------
~/Desktop/seir_526/homework/sql-apartments » git clone git@github.com:salman5436/apartment-database.git                                 salmanmalik@Salmans-Air
Cloning into 'apartment-database'...
remote: Enumerating objects: 8, done.
remote: Counting objects: 100% (8/8), done.
remote: Compressing objects: 100% (6/6), done.
remote: Total 61 (delta 2), reused 5 (delta 2), pack-reused 53
Receiving objects: 100% (61/61), 31.29 KiB | 667.00 KiB/s, done.
Resolving deltas: 100% (23/23), done.
----------------------------------------------------------------------------------------------------------------------------------------------------------------
~/Desktop/seir_526/homework/sql-apartments » code .                                                                                     salmanmalik@Salmans-Air
----------------------------------------------------------------------------------------------------------------------------------------------------------------
~/Desktop/seir_526/homework/sql-apartments » code .                                                                                     salmanmalik@Salmans-Air
----------------------------------------------------------------------------------------------------------------------------------------------------------------
~/Desktop/seir_526/homework/sql-apartments » psql                                                                                       salmanmalik@Salmans-Air
psql (12.3)
Type "help" for help.

salmanmalik=# CREATE DATABASE apartments
salmanmalik-# \c apartments
FATAL:  database "apartments" does not exist
Previous connection kept
salmanmalik-# ;
CREATE DATABASE
salmanmalik=# \c apartments
You are now connected to database "apartments" as user "salmanmalik".
apartments=# ;
apartments=# CREATE TABLE owners (
apartments(#     id SERIAL PRIMARY KEY,
apartments(#     name TEXT,
apartments(#     age INTEGER
apartments(# );
CREATE TABLE
apartments=# CREATE TABLE properties (
apartments(#     id SERIAL PRIMARY KEY,
apartments(#     name TEXT,
apartments(#     units INTEGER,
apartments(#     owner_id INTEGER references owners(id)
apartments(# )
apartments-# ;
CREATE TABLE
apartments=# \d
                  List of relations
 Schema |       Name        |   Type   |    Owner    
--------+-------------------+----------+-------------
 public | owners            | table    | salmanmalik
 public | owners_id_seq     | sequence | salmanmalik
 public | properties        | table    | salmanmalik
 public | properties_id_seq | sequence | salmanmalik
(4 rows)

apartments=# \d owners_id_seq
                   Sequence "public.owners_id_seq"
  Type   | Start | Minimum |  Maximum   | Increment | Cycles? | Cache 
---------+-------+---------+------------+-----------+---------+-------
 integer |     1 |       1 | 2147483647 |         1 | no      |     1
Owned by: public.owners.id

apartments=# \d owners
                            Table "public.owners"
 Column |  Type   | Collation | Nullable |              Default               
--------+---------+-----------+----------+------------------------------------
 id     | integer |           | not null | nextval('owners_id_seq'::regclass)
 name   | text    |           |          | 
 age    | integer |           |          | 
Indexes:
    "owners_pkey" PRIMARY KEY, btree (id)
Referenced by:
    TABLE "properties" CONSTRAINT "properties_owner_id_fkey" FOREIGN KEY (owner_id) REFERENCES owners(id)

apartments=# \d properties
                             Table "public.properties"
  Column  |  Type   | Collation | Nullable |                Default                 
----------+---------+-----------+----------+----------------------------------------
 id       | integer |           | not null | nextval('properties_id_seq'::regclass)
 name     | text    |           |          | 
 units    | integer |           |          | 
 owner_id | integer |           |          | 
Indexes:
    "properties_pkey" PRIMARY KEY, btree (id)
Foreign-key constraints:
    "properties_owner_id_fkey" FOREIGN KEY (owner_id) REFERENCES owners(id)

apartments=# INSERT INTO owners (name, age)
apartments-# VALUES ('Donald', 29);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES ('John', 33);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES ('Jane', 43);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES ('Yuki', 67);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES ('Erin', 21);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES ('Siobhan', 55);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES ('Sal', 24);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES ('Tony', 40);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES ('Nesso', 11);
INSERT 0 1
apartments=# \d owners
                            Table "public.owners"
 Column |  Type   | Collation | Nullable |              Default               
--------+---------+-----------+----------+------------------------------------
 id     | integer |           | not null | nextval('owners_id_seq'::regclass)
 name   | text    |           |          | 
 age    | integer |           |          | 
Indexes:
    "owners_pkey" PRIMARY KEY, btree (id)
Referenced by:
    TABLE "properties" CONSTRAINT "properties_owner_id_fkey" FOREIGN KEY (owner_id) REFERENCES owners(id)

apartments=# SELECT * FROM owners
apartments-# ;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  3 | Jane    |  43
  4 | Yuki    |  67
  5 | Erin    |  21
  6 | Siobhan |  55
  7 | Sal     |  24
  8 | Tony    |  40
  9 | Nesso   |  11
(9 rows)

apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Archstone', 20, 1);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Zenith Hills', 10, 2);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Willowspring', 30, 3);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Ridgefield Bay', 5, 1);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Brookvista', 20, 4);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Goldendale', 15, 5);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Green Haven', 40, 6);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Fair Creek', 35, 7);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Parkview Pointe', 50, 8);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Royal Gardens Court', 45, 9);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Boardwalk', 60, 7);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Teen Titans Tower', 10, 1);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Stark Towers', 50, 8);
INSERT 0 1
apartments=# \d properties
                             Table "public.properties"
  Column  |  Type   | Collation | Nullable |                Default                 
----------+---------+-----------+----------+----------------------------------------
 id       | integer |           | not null | nextval('properties_id_seq'::regclass)
 name     | text    |           |          | 
 units    | integer |           |          | 
 owner_id | integer |           |          | 
Indexes:
    "properties_pkey" PRIMARY KEY, btree (id)
Foreign-key constraints:
    "properties_owner_id_fkey" FOREIGN KEY (owner_id) REFERENCES owners(id)

apartments=# ;
apartments=# SELECT * FROM properties
apartments-# ;
 id |        name         | units | owner_id 
----+---------------------+-------+----------
  1 | Archstone           |    20 |        1
  2 | Zenith Hills        |    10 |        2
  3 | Willowspring        |    30 |        3
  4 | Ridgefield Bay      |     5 |        1
  5 | Brookvista          |    20 |        4
  6 | Goldendale          |    15 |        5
  7 | Green Haven         |    40 |        6
  8 | Fair Creek          |    35 |        7
  9 | Parkview Pointe     |    50 |        8
 10 | Royal Gardens Court |    45 |        9
 11 | Boardwalk           |    60 |        7
 12 | Teen Titans Tower   |    10 |        1
 13 | Stark Towers        |    50 |        8
(13 rows)

apartments=# SELECT name FROM owners;
  name   
---------
 Donald
 John
 Jane
 Yuki
 Erin
 Siobhan
 Sal
 Tony
 Nesso
(9 rows)

apartments=# SELECT age FROM owners;
 age 
-----
  29
  33
  43
  67
  21
  55
  24
  40
  11
(9 rows)

apartments=# SELECT age FROM owners WHERE name='Donald';
 age 
-----
  29
(1 row)

apartments=# SELECT name FROM owners WHERE name='Donald';
  name  
--------
 Donald
(1 row)

apartments=# SELECT age FROM owners WHERE age>30;
 age 
-----
  33
  43
  67
  55
  40
(5 rows)

apartments=# SELECT name FROM owners WHERE name='%E';
 name 
------
(0 rows)

apartments=# SELECT name FROM owners WHERE name='%E%';
 name 
------
(0 rows)

apartments=# SELECT name FROM owners WHERE name='%e%';
 name 
------
(0 rows)

apartments=# SELECT name FROM owners WHERE name LIKE '%E';
 name 
------
(0 rows)

apartments=# SELECT * FROM owners WHERE name LIKE '%E';
 id | name | age 
----+------+-----
(0 rows)

apartments=# SELECT * FROM owners WHERE name LIKE '%E%';
 id | name | age 
----+------+-----
  5 | Erin |  21
(1 row)

apartments=# SELECT name FROM owners WHERE name LIKE '%E%';
 name 
------
 Erin
(1 row)

apartments=# SELECT name FROM owners;
  name   
---------
 Donald
 John
 Jane
 Yuki
 Erin
 Siobhan
 Sal
 Tony
 Nesso
(9 rows)

apartments=# UPDATE owners SET age = 30 WHERE name ='Jane';
UPDATE 1
apartments=# UPDATE owners SET name = 'Janet' WHERE name = 'Jane';
UPDATE 1
apartments=# \d owners
                            Table "public.owners"
 Column |  Type   | Collation | Nullable |              Default               
--------+---------+-----------+----------+------------------------------------
 id     | integer |           | not null | nextval('owners_id_seq'::regclass)
 name   | text    |           |          | 
 age    | integer |           |          | 
Indexes:
    "owners_pkey" PRIMARY KEY, btree (id)
Referenced by:
    TABLE "properties" CONSTRAINT "properties_owner_id_fkey" FOREIGN KEY (owner_id) REFERENCES owners(id)

apartments=# SELECT * FROM owners;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  4 | Yuki    |  67
  5 | Erin    |  21
  6 | Siobhan |  55
  7 | Sal     |  24
  8 | Tony    |  40
  9 | Nesso   |  11
  3 | Janet   |  30
(9 rows)

apartments=# DELETE FROM owners WHERE name = 'Janet';
ERROR:  update or delete on table "owners" violates foreign key constraint "properties_owner_id_fkey" on table "properties"
DETAIL:  Key (id)=(3) is still referenced from table "properties".
apartments=# SELECT * FROM owners;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  4 | Yuki    |  67
  5 | Erin    |  21
  6 | Siobhan |  55
  7 | Sal     |  24
  8 | Tony    |  40
  9 | Nesso   |  11
  3 | Janet   |  30
(9 rows)

apartments=# SELECT * FROM properties
apartments-# ;
 id |        name         | units | owner_id 
----+---------------------+-------+----------
  1 | Archstone           |    20 |        1
  2 | Zenith Hills        |    10 |        2
  3 | Willowspring        |    30 |        3
  4 | Ridgefield Bay      |     5 |        1
  5 | Brookvista          |    20 |        4
  6 | Goldendale          |    15 |        5
  7 | Green Haven         |    40 |        6
  8 | Fair Creek          |    35 |        7
  9 | Parkview Pointe     |    50 |        8
 10 | Royal Gardens Court |    45 |        9
 11 | Boardwalk           |    60 |        7
 12 | Teen Titans Tower   |    10 |        1
 13 | Stark Towers        |    50 |        8
(13 rows)

apartments=# UPDATE properties SET owner_id = 6 WHERE name = 'Willowspring';
UPDATE 1
apartments=# DELETE FROM owners WHERE name = 'Janet';                                                                                                           DELETE 1
apartments=# SELECT names FROM owners LIMIT 3;
ERROR:  column "names" does not exist
LINE 1: SELECT names FROM owners LIMIT 3;
               ^
HINT:  Perhaps you meant to reference the column "owners.name".
apartments=# SELECT owners.names FROM owners LIMIT 3;
ERROR:  column owners.names does not exist
LINE 1: SELECT owners.names FROM owners LIMIT 3;
               ^
HINT:  Perhaps you meant to reference the column "owners.name".
apartments=# SELECT names FROM owners ORDER BY name LIMIT 3;
ERROR:  column "names" does not exist
LINE 1: SELECT names FROM owners ORDER BY name LIMIT 3;
               ^
HINT:  Perhaps you meant to reference the column "owners.name".
apartments=# SELECT name FROM owners LIMIT 3;
  name  
--------
 Donald
 John
 Yuki
(3 rows)

apartments=# SELECT name FROM owners WHERE name LIKE '%a%';
  name   
---------
 Donald
 Siobhan
 Sal
(3 rows)

apartments=# SELECT name FROM properties ORDER BY name WHERE name NOT IN SELECT name FROM properties ORDER BY name WHERE name NOT IN ('Archstone') AND id NOT IN (3, 5);
ERROR:  syntax error at or near "WHERE"
LINE 1: SELECT name FROM properties ORDER BY name WHERE name NOT IN ...
                                                  ^
apartments=# SELECT name FROM properties ORDER BY name WHERE name NOT IN ('Archstone') AND id NOT IN (3, 5);
ERROR:  syntax error at or near "WHERE"
LINE 1: SELECT name FROM properties ORDER BY name WHERE name NOT IN ...
                                                  ^
apartments=# SELECT name FROM properties ORDER BY name WHERE name NOT ('Archstone') AND id NOT IN (3, 5);
ERROR:  syntax error at or near "WHERE"
LINE 1: SELECT name FROM properties ORDER BY name WHERE name NOT ('A...
                                                  ^
apartments=#     SELECT name FROM properties ORDER BY name WHERE NOT name ='Archstone' AND id NOT IN (3, 5);
ERROR:  syntax error at or near "WHERE"
LINE 1: SELECT name FROM properties ORDER BY name WHERE NOT name ='A...
                                                  ^
apartments=# SELECT name FROM properties ORDER BY name AND WHERE NOT name ='Archstone' AND id NOT IN (3, 5);
ERROR:  syntax error at or near "WHERE"
LINE 1: SELECT name FROM properties ORDER BY name AND WHERE NOT name...
                                                      ^
apartments=# SELECT name FROM properties WHERE NOT name ='Archstone' AND id NOT IN (3, 5) ORDER BY name; 
        name         
---------------------
 Boardwalk
 Fair Creek
 Goldendale
 Green Haven
 Parkview Pointe
 Ridgefield Bay
 Royal Gardens Court
 Stark Towers
 Teen Titans Tower
 Zenith Hills
(10 rows)

apartments=# SELECT name FROM properties WHERE NOT name ='Archstone' AND owner_id NOT IN (3, 5) ORDER BY name;
        name         
---------------------
 Boardwalk
 Brookvista
 Fair Creek
 Green Haven
 Parkview Pointe
 Ridgefield Bay
 Royal Gardens Court
 Stark Towers
 Teen Titans Tower
 Willowspring
 Zenith Hills
(11 rows)

apartments=# SELECT max(age) FROM owners;
 max 
-----
  67
(1 row)

apartments=# SELECT max(age) FROM owners WHERE age<30 AND name LIKE '%o' LIMIT 1;
 max 
-----
  11
(1 row)

apartments=# SELECT name, max(age) FROM owners WHERE age<30 AND name LIKE '%o' LIMIT 1;
ERROR:  column "owners.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: SELECT name, max(age) FROM owners WHERE age<30 AND name LIKE...
               ^
apartments=# SELECT names, max(age) FROM owners WHERE age<30 AND name LIKE '%o' LIMIT 1;
ERROR:  column "names" does not exist
LINE 1: SELECT names, max(age) FROM owners WHERE age<30 AND name LIK...
               ^
HINT:  Perhaps you meant to reference the column "owners.name".
apartments=# SELECT name, max(age) FROM owners WHERE age<30 AND name LIKE '%o' LIMIT 1;
ERROR:  column "owners.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: SELECT name, max(age) FROM owners WHERE age<30 AND name LIKE...
               ^
apartments=# SELECT  max(age), name FROM owners WHERE age<30 AND name LIKE '%o' LIMIT 1;
ERROR:  column "owners.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: SELECT  max(age), name FROM owners WHERE age<30 AND name LIK...
                          ^
apartments=# SELECT * FROM owners
apartments-# ;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  4 | Yuki    |  67
  5 | Erin    |  21
  6 | Siobhan |  55
  7 | Sal     |  24
  8 | Tony    |  40
  9 | Nesso   |  11
(8 rows)

apartments=# UPDATE owners SET age=20 WHERE name='Nesso';
UPDATE 1
apartments=# SELECT  max(age), name FROM owners WHERE age<30 AND name LIKE '%o' LIMIT 1;                                                                        ERROR:  column "owners.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: SELECT  max(age), name FROM owners WHERE age<30 AND name LIK...
                          ^
apartments=# SELECT max(age) FROM owners WHERE age<30 AND name LIKE '%o' LIMIT 1;
 max 
-----
  20
(1 row)

apartments=# SELECT count(name) FROM properties WHERE owner_id > 1 AND owner_id < 3;
 count 
-------
     1
(1 row)

apartments=# SELECT count(*) FROM properties WHERE owner_id > 1 AND owner_id < 3;
 count 
-------
     1
(1 row)

apartments=# SELECT owners.name, properties.name
apartments-#     FROM owners
apartments-#     JOIN properties
apartments-#     ON owners.id = properties.owner_id;
  name   |        name         
---------+---------------------
 Donald  | Archstone
 John    | Zenith Hills
 Donald  | Ridgefield Bay
 Yuki    | Brookvista
 Erin    | Goldendale
 Siobhan | Green Haven
 Sal     | Fair Creek
 Tony    | Parkview Pointe
 Nesso   | Royal Gardens Court
 Sal     | Boardwalk
 Donald  | Teen Titans Tower
 Tony    | Stark Towers
 Siobhan | Willowspring
(13 rows)

apartments=# SELECT owners.name, properties.name                                                                                                                    FROM owners                                                                                                                                                     JOIN properties                                                                                                                                                 ON owners.id = properties.owner_id
apartments-# ORDER BY owners.name;
  name   |        name         
---------+---------------------
 Donald  | Archstone
 Donald  | Ridgefield Bay
 Donald  | Teen Titans Tower
 Erin    | Goldendale
 John    | Zenith Hills
 Nesso   | Royal Gardens Court
 Sal     | Fair Creek
 Sal     | Boardwalk
 Siobhan | Green Haven
 Siobhan | Willowspring
 Tony    | Stark Towers
 Tony    | Parkview Pointe
 Yuki    | Brookvista
(13 rows)

apartments=# ALTER TABLE properties RENAME COLUMN 'name' TO 'property_name';                                                                                    ERROR:  syntax error at or near "'name'"
LINE 1: ALTER TABLE properties RENAME COLUMN 'name' TO 'property_nam...
                                             ^
apartments=# ALTER TABLE properties RENAME COLUMN name TO property_name;
ALTER TABLE
apartments=# \d properties
                                Table "public.properties"
    Column     |  Type   | Collation | Nullable |                Default                 
---------------+---------+-----------+----------+----------------------------------------
 id            | integer |           | not null | nextval('properties_id_seq'::regclass)
 property_name | text    |           |          | 
 units         | integer |           |          | 
 owner_id      | integer |           |          | 
Indexes:
    "properties_pkey" PRIMARY KEY, btree (id)
Foreign-key constraints:
    "properties_owner_id_fkey" FOREIGN KEY (owner_id) REFERENCES owners(id)

apartments=# 
