Show all the data in the owners table.
SELECT * FROM owner;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  3 | Jane    |  43
  4 | Yuki    |  67
  5 | Erin    |  21
  6 | Siobhan |  55
  7 | Bill    |  77
  8 | Sara    |  35
  9 | Brian   |  42
(9 rows)


Show the names of all owners.
SELECT name FROM owner;
  name   
---------
 Donald
 John
 Jane
 Yuki
 Erin
 Siobhan
 Bill
 Sara
 Brian
(9 rows)

Show the ages of all of the owners in ascending order.
SELECT age FROM owner ORDER BY age ASC;
 age 
-----
  21
  29
  33
  35
  42
  43
  55
  67
  77
(9 rows)

Show the name of an owner whose name is Donald.
SELECT name FROM owner WHERE name='Donald';
  name  
--------
 Donald
(1 row

Show the age of all owners who are older than 30.
SELECT age FROM owner WHERE age>30;
 age 
-----
  33
  43
  67
  55
  77
  35
  42
(7 rows)

Show the name of all owners whose name starts with an E.
SELECT name FROM owner WHERE name LIKE 'E%';
 name 
------
 Erin
(1 row)

Change Jane's age to 30.
apartments=# UPDATE owner SET age='30' WHERE name='Jane';

Change Jane's name to Janet.
UPDATE owner SET name='Janet' WHERE name='Jane';

Delete the owner named Janet.
DELETE FROM owner WHERE name='Janet';
ERROR:  update or delete on table "owner" violates foreign key constraint "property_owner_id_fkey" on table "property"
DETAIL:  Key (id)=(3) is still referenced from table "property".

Show the names of the first three owners in your owners 
SELECT name FROM owner LIMIT 3;
  name  
--------
 Donald
 John
 Yuki
(3 rows)


Show the name of all owners whose name contains an a.
SELECT name FROM owner WHERE name LIKE '%a%';
  name   
---------
 Donald
 Siobhan
 Sara
 Brian
 Janet
(5 rows)

Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT * FROM property WHERE NOT name='Archstone' AND NOT id=3 AND NOT id=5;
 id |        name        | units | owner_id 
----+--------------------+-------+----------
  2 | Zenith Hills       |    10 |        6
  4 | Ridgefield Bay     |     5 |        8
  6 | Goldendale         |    15 |        9
  7 | Green Haven        |    40 |        5
  8 | Fair Creek         |    35 |        1
  9 | Parkview Pointe    |    50 |        7
 10 | Royal Garden Court |    45 |        2
 11 | HeartDale Homes    |    30 |        6
 12 | Riverside View     |     8 |        1
 13 | Lunar Landing      |     4 |        4
(10 rows)

Show the highest age of all owners.
SELECT age FROM owner ORDER BY age DESC LIMIT 1;
 age 
-----
  77
(1 row)

Show the highest age of owners who are under 30 and whose name contains an o. Limit to one result.
SELECT age FROM owner WHERE age<30 AND name LIKE '%o%' ORDER BY age DESC LIMIT 1;
 age 
-----
  29
(1 row)

Count the total number of properties where the owner_id is between 1 and 3.
SELECT name FROM property WHERE id<4;
     name     
--------------
 Archstone
 Zenith Hills
 Willowspring
(3 rows)


