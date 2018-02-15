-- Create tables
apartments=# CREATE TABLE owners (id SERIAL PRIMARY KEY, name TEXT, age NUMERIC);
CREATE TABLE
apartments=# \dt
             List of relations
 Schema |   Name   | Type  |     Owner
--------+----------+-------+---------------
 public | owners   | table | danielvancura
 public | students | table | danielvancura
(2 rows)

apartments=# \d+ owners
                                             Table "public.owners"
 Column |  Type   |                      Modifiers                      | Storage  | Stats target | Description
--------+---------+-----------------------------------------------------+----------+--------------+-------------
 id     | integer | not null default nextval('owners_id_seq'::regclass) | plain    |              |
 name   | text    |                                                     | extended |              |
 age    | numeric |                                                     | main     |              |

 CREATE TABLE properties (                                                                                                                id SERIAL,                                                                                                                                            name VARCHAR(50),                                                                                                                                     units INTEGER,                                                                                                                                        owner_id INTEGER REFERENCES owners(id));
 CREATE TABLE
