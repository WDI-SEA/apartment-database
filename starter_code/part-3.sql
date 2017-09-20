-- 1. Show all the data in the owners table.
   apartments=# SELECT * FROM owners;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  3 | Jane   |  43
  4 | Elli   |  12
  5 | Lion   |  26
  6 | Scraw  |  47
(6 rows)


-- 2. Show the names of all owners.
apartments=# SELECT name FROM owners;
  name  
--------
 Donald
 John
 Jane
 Elli
 Lion
 Scraw
(6 rows)

-- 3. Show the ages of all of the owners in ascending order.
apartments=# SELECT age FROM owners ORDER BY age ASC;
 age 
-----
  12
  26
  29
  33
  43
  47
(6 rows)

-- 4. Show the name of an owner whose name is Donald.
apartments=# SELECT name FROM owners WHERE name = 'Donald';
  name  
--------
 Donald
(1 row)

-- 5. Show the age of all owners who are older than 30.
apartments=# SELECT age FROM owners WHERE age > 30;
 age 
-----
  33
  43
  47
(3 rows)

-- 6. Show the name of all owners whose name starts with an E.
apartments=# SELECT * FROM owners WHERE name LIKE 'E%';
 id | name | age 
----+------+-----
  4 | Elli |  12
(1 row)




-- 7. Change Jane's age to 30.

apartments=# UPDATE owners SET age = 30 WHERE name = 'Jane';
UPDATE 1
apartments=# SELECT * FROM owners;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Elli   |  12
  5 | Lion   |  26
  6 | Scraw  |  47
  3 | Jane   |  30
(6 rows)


-- 8. Change Jane's name to Janet.

apartments=# UPDATE owners SET name = 'Janet' WHERE name = 'Jane';
UPDATE 1
apartments=# SELECT * FROM owners;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Elli   |  12
  5 | Lion   |  26
  6 | Scraw  |  47
  3 | Janet  |  30
(6 rows)



-- 9. Delete the owner named Janet.

apartments=# DELETE FROM owners WHERE name = 'Janet';
DELETE 1
apartments=# SELECT * FROM owners;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Elli   |  12
  5 | Lion   |  26
  6 | Scraw  |  47
(5 rows)


-- 10. Show the names of the first three owners in your owners table.
apartments=# SELECT * FROM owners LIMIT 3;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Elli   |  12
(3 rows)

-- 11. List all properties sorted by the owners names
apartments=# SELECT * FROM owners, properties WHERE owners.id = properties.owner_id ORDER BY owners.name;
 id |  name  | age | id |     name     | units | owner_id 
----+--------+-----+----+--------------+-------+----------
  1 | Donald |  29 |  5 | Poopoo       |    50 |        1
  4 | Elli   |  12 |  1 | Archstone    |    20 |        4
  2 | John   |  33 |  2 | Willowspring |    30 |        2
  5 | Lion   |  26 |  3 | Willows      |     3 |        5
  6 | Scraw  |  47 |  4 | Crying       |    10 |        6
(5 rows)

apartments=# SELECT properties.* FROM owners, properties WHERE owners.id = properties.owner_id ORDER BY owners.name;
 id |     name     | units | owner_id 
----+--------------+-------+----------
  5 | Poopoo       |    50 |        1
  1 | Archstone    |    20 |        4
  2 | Willowspring |    30 |        2
  3 | Willows      |     3 |        5
  4 | Crying       |    10 |        6
(5 rows)

-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
apartments=# SELECT * FROM properties WHERE name != 'Archstone' AND id != 3 AND id != 5 ORDER BY name ASC;    id |     name     | units | owner_id 
----+--------------+-------+----------
  4 | Crying       |    10 |        6
  2 | Willowspring |    30 |        2
(2 rows)



--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".
apartments=# ALTER TABLE properties RENAME name TO property_name;
ALTER TABLE
apartments=# SELECT * FROM properties;
 id | property_name | units | owner_id 
----+---------------+-------+----------
  1 | Archstone     |    20 |        4
  2 | Willowspring  |    30 |        2
  3 | Willows       |     3 |        5
  4 | Crying        |    10 |        6
  5 | Poopoo        |    50 |        1
(5 rows)



-- 14. Count the total number of properties where the owner_id is between 1 and 3.
apartments=# SELECT COUNT(*) FROM properties WHERE owner_id > 0 AND owner_id < 4;
 count 
-------
     2
(1 row)

apartments=# SELECT * FROM properties;
 id | property_name | units | owner_id 
----+---------------+-------+----------
  1 | Archstone     |    20 |        4
  2 | Willowspring  |    30 |        2
  3 | Willows       |     3 |        5
  4 | Crying        |    10 |        6
  5 | Poopoo        |    50 |        1
(5 rows)


-- 15. Show the highest age of all owners.
apartments=# SELECT MAX(age) FROM owners;
 max 
-----
  47
(1 row)




-- 16. Show the name of all owners whose name starts with an E.

apartments=# SELECT * FROM owners WHERE name LIKE 'E%';
 id | name | age 
----+------+-----
  4 | Elli |  12
(1 row)
