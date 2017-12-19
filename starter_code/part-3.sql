apartments=# SELECT * FROM owner;
 id |  name   | age
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  3 | Jane    |  43
  4 | Jack    |  24
  5 | Jill    |  18
  6 | Humbert |  50
(6 rows)

apartments=# SELECT name FROM owner
apartments-# ;
  name
---------
 Donald
 John
 Jane
 Jack
 Jill
 Humbert
(6 rows)

apartments=# SELECT name, age FROM owner ORDER BY age ASC;
  name   | age
---------+-----
 Jill    |  18
 Jack    |  24
 Donald  |  29
 John    |  33
 Jane    |  43
 Humbert |  50
(6 rows)

apartments=# SELECT name FROM owner WHERE name="Donald";
ERROR:  column "Donald" does not exist
LINE 1: SELECT name FROM owner WHERE name="Donald";
                                          ^
apartments=# SELECT name="Donald" FROM owner;
ERROR:  column "Donald" does not exist
LINE 1: SELECT name="Donald" FROM owner;
                    ^
apartments=# SELECT * FROM owner WHERE name = "Donald";
ERROR:  column "Donald" does not exist
LINE 1: SELECT * FROM owner WHERE name = "Donald";
                                         ^
apartments=# SELECT * FROM owner WHERE name = 'Donald';
 id |  name  | age
----+--------+-----
  1 | Donald |  29
(1 row)

apartments=# SELECT name, age FROM owner WHERE age > 30;
  name   | age
---------+-----
 John    |  33
 Jane    |  43
 Humbert |  50
(3 rows)

apartments=# SELECT name FROM owner WHERE name = 'E*';
 name
------
(0 rows)

apartments=# UPDATE owner SET age=30 WHERE name = 'Jane';
UPDATE 1
apartments=# \d+
                           List of relations
 Schema |      Name       |   Type   | Owner |    Size    | Description
--------+-----------------+----------+-------+------------+-------------
 public | owner           | table    | joe   | 16 kB      |
 public | owner_id_seq    | sequence | joe   | 8192 bytes |
 public | property        | table    | joe   | 16 kB      |
 public | property_id_seq | sequence | joe   | 8192 bytes |
(4 rows)

apartments=# SELECT * FROM owner;
 id |  name   | age
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  4 | Jack    |  24
  5 | Jill    |  18
  6 | Humbert |  50
  3 | Jane    |  30
(6 rows)

apartments=# UPDATE owner SET name = 'Janet' WHERE name = 'Jane';
UPDATE 1
apartments=# SELECT * FROM owner;
 id |  name   | age
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  4 | Jack    |  24
  5 | Jill    |  18
  6 | Humbert |  50
  3 | Janet   |  30
(6 rows)

apartments=# DELETE FROM owner WHERE name = 'Janet';
DELETE 1
apartments=# SELECT name, age FROM owner ORDER BY id LIMIT 3;
  name  | age
--------+-----
 Donald |  29
 John   |  33
 Jack   |  24
(3 rows)

apartments=# SELECT * FROM property ORDER BY owner_id;
 id |     name     | units | owner_id
----+--------------+-------+----------
  5 | One          |     1 |        1
  4 | JanePl       |   100 |        3
  1 | Archstone    |    20 |        4
  3 | Granada      |    10 |        5
  2 | Willowspring |    30 |        6
(5 rows)

apartments=# SELECT * FROM property WHERE name != 'Archstone' && id != 3 || 5;
ERROR:  syntax error at or near "!="
LINE 1: ...T * FROM property WHERE name != 'Archstone' && id != 3 || 5;
                                                             ^
apartments=# SELECT * FROM property WHERE name != 'Archstone';
 id |     name     | units | owner_id
----+--------------+-------+----------
  2 | Willowspring |    30 |        6
  3 | Granada      |    10 |        5
  4 | JanePl       |   100 |        3
  5 | One          |     1 |        1
(4 rows)

apartments=# SELECT * FROM property WHERE name != 'Archstone' AND id != 3, 5;
ERROR:  syntax error at or near ","
LINE 1: ...CT * FROM property WHERE name != 'Archstone' AND id != 3, 5;
                                                                   ^
apartments=# SELECT * FROM property WHERE name != 'Archstone' AND id != 3 AND id != 5;
 id |     name     | units | owner_id
----+--------------+-------+----------
  2 | Willowspring |    30 |        6
  4 | JanePl       |   100 |        3
(2 rows)

apartments=# ALTER TABLE property ALTER COLUMN name SET TO property_name;
ERROR:  syntax error at or near "TO"
LINE 1: ALTER TABLE property ALTER COLUMN name SET TO property_name;
                                                   ^
apartments=# ALTER TABLE property ALTER COLUMN name SET TO 'property_name';
ERROR:  syntax error at or near "TO"
LINE 1: ALTER TABLE property ALTER COLUMN name SET TO 'property_name...
                                                   ^
apartments=# ALTER TABLE property RENAME COLUMN 'name' TO 'property_name';
ERROR:  syntax error at or near "'name'"
LINE 1: ALTER TABLE property RENAME COLUMN 'name' TO 'property_name'...
                                           ^
apartments=# ALTER TABLE property RENAME COLUMN name TO property_name;
ALTER TABLE
apartments=# SELECT SUM(units) FROM property WHERE id = 1, 2, 3;
ERROR:  syntax error at or near ","
LINE 1: SELECT SUM(units) FROM property WHERE id = 1, 2, 3;
                                                    ^
apartments=# SELECT SUM(units) FROM property WHERE id = 1-3;
 sum
-----

(1 row)

apartments=# SELECT SUM(units) FROM property;
 sum
-----
 161
(1 row)

apartments=# SELECT age FROM owners ORDER BY age DESC LIMIT 1;
ERROR:  relation "owners" does not exist
LINE 1: SELECT age FROM owners ORDER BY age DESC LIMIT 1;
                        ^
apartments=# SELECT age FROM owner ORDER BY age DESC LIMIT 1;
 age
-----
  50
(1 row)

apartments=# SELECT name, age FROM owner ORDER BY age DESC LIMIT 1;
  name   | age
---------+-----
 Humbert |  50
(1 row)
