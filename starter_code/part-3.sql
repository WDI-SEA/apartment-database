--- Answers for Questions

Write down the following sql statements that are required to solve the following tasks. Place your answers in part-3.sql.

Show all the data in the owners table.

SELECT * FROM owners;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  3 | Jane    |  43
  4 | Yuki    |  67
  5 | Erin    |  21
  6 | Siobhan |  55
  7 | Pete    |  23
  8 | Jim     |  35
  9 | Dwight  |  37


Show the names of all owners.

SELECT name FROM owners;
  name   
---------
 Donald
 John
 Jane
 Yuki
 Erin
 Siobhan
 Pete
 Jim
 Dwight
(9 rows)

Show the ages of all of the owners in ascending order.

SELECT age FROM owners ORDER BY age;
 age 
-----
  21
  23
  29
  33
  35
  37
  43
  55
  67
(9 rows)

Show the name of an owner whose name is Donald.

SELECT name FROM owners WHERE name = 'Donald';
  name  
--------
 Donald

Show the age of all owners who are older than 30.

SELECT age FROM owners WHERE age > 30;
 age 
-----
  33
  43
  67
  55
  35
  37
(6 rows)

Show the name of all owners whose name starts with an E.

SELECT name FROM owners WHERE name LIKE 'E%';
 name 
------
 Erin
(1 row)

Change Jane's age to 30.

UPDATE owners SET age = 30 WHERE name = 'Jane';
UPDATE 1
apartments=# SELECT * FROM owners;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  4 | Yuki    |  67
  5 | Erin    |  21
  6 | Siobhan |  55
  7 | Pete    |  23
  8 | Jim     |  35
  9 | Dwight  |  37
  3 | Jane    |  30

Change Jane's name to Janet.

UPDATE owners SET name = 'Janet' WHERE name = 'Jane';
UPDATE 1
apartments=# SELECT * FROM owners;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  4 | Yuki    |  67
  5 | Erin    |  21
  6 | Siobhan |  55
  7 | Pete    |  23
  8 | Jim     |  35
  9 | Dwight  |  37
  3 | Janet   |  30

Delete the owner named Janet.

DELETE FROM owners WHERE name = 'Janet';
DELETE 1
apartments=# SELECT * FROM owners;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  4 | Yuki    |  67
  5 | Erin    |  21
  6 | Siobhan |  55
  7 | Pete    |  23
  8 | Jim     |  35
  9 | Dwight  |  37

Show the names of the first three owners in your owners table.

 SELECT name FROM owners ORDER BY id LIMIT 3;
  name  
--------
 Donald
 John
 Yuki
(3 rows)


Show the name of all owners whose name contains an a.

SELECT name FROM owners WHERE name LIKE '%a%';
  name   
---------
 Donald
 Siobhan
(2 rows)

Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.

SELECT name FROM properties WHERE name != 'Archstone' AND id != 3 AND id != 5;
        name         
---------------------
 Zenith Hills
 Ridgefield Bay
 Goldendale
 Green Haven
 Fair Creek
 Parkview Pointe
 Royal Gardens Court
 Clarkphart
 Jimjim Station
 Pewpew Pass
(10 rows)

Show the highest age of all owners.

SELECT age FROM owners ORDER BY age DESC LIMIT 1;
 age 
-----
  67
(1 row)

Show the highest age of owners who are under 30 and whose name contains an o. Limit to one result.

SELECT age FROM owners WHERE age < 30 AND name LIKE '%o%'  ORDER BY age DESC LIMIT 1;
 age 
-----
  29
(1 row)

Count the total number of properties where the owner_id is between 1 and 3.

SELECT COUNT(id) FROM properties WHERE owner_id > 1 AND owner_id < 3;
 count 
-------
     1

List all properties sorted by the owners names

SELECT * FROM properties INNER JOIN owners ON owners.id = properties.owner_id ORDER BY owners.name;
 id |        name         | units | owner_id | id |  name   | age 
----+---------------------+-------+----------+----+---------+-----
  7 | Green Haven         |    40 |        1 |  1 | Donald  |  29
  3 | Willowspring        |    30 |        9 |  9 | Dwight  |  37
  1 | Archstone           |    20 |        9 |  9 | Dwight  |  37
 10 | Royal Gardens Court |    45 |        9 |  9 | Dwight  |  37
 13 | Pewpew Pass         |    20 |        9 |  9 | Dwight  |  37
  8 | Fair Creek          |    35 |        5 |  5 | Erin    |  21
 12 | Jimjim Station      |    69 |        8 |  8 | Jim     |  35
  6 | Goldendale          |    15 |        8 |  8 | Jim     |  35
  4 | Ridgefield Bay      |     5 |        2 |  2 | John    |  33
 11 | Clarkphart          |     2 |        7 |  7 | Pete    |  23
  5 | Brookvista          |    20 |        6 |  6 | Siobhan |  55
  9 | Parkview Pointe     |    50 |        4 |  4 | Yuki    |  67
(12 rows)


In the properties table change the name of the column "name" to "property_name".
