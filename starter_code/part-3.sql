--- Answers for Questions

-- 1. Show all the data in the owners table.
SELECT * FROM owners;
 id |  name   | age
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  3 | Jane    |  43
  4 | Yuki    |  43
  5 | Siobhan |  55
  6 | Charles |  19
  7 | Nesso   |  26
  9 | Michela |  21
(8 rows)

-- 2. Show the names of all owners.
SELECT name FROM owners;
  name
---------
 Donald
 John
 Jane
 Yuki
 Siobhan
 Charles
 Nesso
 Michela
(8 rows)
-- 3. Show the ages of all of the owners in ascending order.
SELECT age FROM owners order by age ASC;
 age
-----
  19
  21
  26
  29
  33
  43
  43
  55
(8 rows)

-- 4. Show the name of an owner whose name is Donald.
SELECT name FROM owners WHERE name='Donald';
  name
--------
 Donald
(1 row)

-- 5. Show the age of all owners who are older than 30.
SELECT name,age FROM owners WHERE age>30;
  name   | age
---------+-----
 John    |  33
 Jane    |  43
 Yuki    |  43
 Siobhan |  55
(4 rows)


-- 6. Show the name of all owners whose name starts with an E.
SELECT name FROM owners WHERE name LIKE 'E%';
 name
------
 Erin
(1 row)

-- 7. Change Jane's age to 30.
UPDATE owners SET age=30 where name='Jane';

-- 8. Change Jane's name to Janet.
UPDATE owners SET name = 'Janet' WHERE name = 'Jane';

-- 9. Delete the owner named Janet.

-- 10. Show the names of the first three owners in your owners table.
SELECT * from owners limit 3;
 id |  name  | age
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Yuki   |  43
(3 rows)

-- 11. Show the name of all owners whose name contains an `a`.
SELECT * FROM owners WHERE name LIKE '%a%'
 id |  name   | age
----+---------+-----
  1 | Donald  |  29
  5 | Siobhan |  55
  6 | Charles |  19
  9 | Michela |  21
  3 | Janet   |  30
  7 | Salman  |  26
(6 rows)

-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT name FROM properties
WHERE name not in ('Archstone') and id NOT IN (3,5)
ORDER BY name ASC;

-- 13. Show the highest age of all owners.
SELECT MAX(age) from owners;
 max
-----
  55
(1 row)

-- 14. Show the highest age of owners who are under 30 and whose name contains an `o`. Limit to one result.
SELECT MAX(age) from owners where age < 30 and name LIKE '%o%';
 max
-----
  29
(1 row)
-- 15. Count the total number of properties where the owner_id is between 1 and 3.
 SELECT COUNT(properties) FROM properties WHERE owner_id>1 and owner_id<3;
 count
-------
     1
(1 row)

-- BONUSES

-- 16. List all properties sorted by the owners names 

-- 17. In the properties table change the name of the column "name" to "property_name".

-- 18. Add a new property to the owner with an id of 3.