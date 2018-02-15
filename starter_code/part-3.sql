-- 1. Show all the data in the owners table.
-- apartments=# SELECT * FROM owner;
--  id |  name  | age
-- ----+--------+-----
--   1 | Donald |  29
--   2 | John   |  33
--   3 | Jane   |  43
--   4 | Bill   |  23
--   5 | Sara   |  18
--   6 | Paul   |  44
-- (6 rows)


-- 2. Show the names of all owners.
-- apartments=# SELECT name FROM owner;
--   name
-- --------
--  Donald
--  John
--  Jane
--  Bill
--  Sara
--  Paul
-- (6 rows)


-- 3. Show the ages of all of the owners in ascending order.
-- apartments=# SELECT age, name FROM owner ORDER BY age DESC;
--  age |  name
-- -----+--------
--   44 | Paul
--   43 | Jane
--   33 | John
--   29 | Donald
--   23 | Bill
--   18 | Sara
-- (6 rows)

-- apartments=# SELECT age, name FROM owner ORDER BY age;
--  age |  name
-- -----+--------
--   18 | Sara
--   23 | Bill
--   29 | Donald
--   33 | John
--   43 | Jane
--   44 | Paul
-- (6 rows)


-- 4. Show the name of an owner whose name is Donald.
-- apartments=# SELECT age, name FROM owner WHERE name='Donald';
--  age |  name
-- -----+--------
--   29 | Donald
-- (1 row)


-- 5. Show the age of all owners who are older than 30.
-- apartments=# SELECT age, name FROM owner WHERE age>'30';
--  age | name
-- -----+------
--   33 | John
--   43 | Jane
--   44 | Paul
-- (3 rows)


-- 6. Show the name of all owners whose name starts with an E.
-- apartments=# SELECT age, name FROM owner WHERE name LIKE 'E%';
--  age | name
-- -----+------
-- (0 rows)
--
-- apartments=# SELECT age, name FROM owner WHERE name LIKE 'J%';
--  age | name
-- -----+------
--   33 | John
--   43 | Jane
-- (2 rows)


-- 7. Change Jane's age to 30.
-- apartments=# UPDATE owner SET age='30' WHERE name='Jane';
-- UPDATE 1


-- 8. Change Jane's name to Janet.
-- apartments=# UPDATE owner SET name='Janet' WHERE name='Jane';
-- UPDATE 1

-- apartments=# SELECT name FROM  owner  WHERE name='Janet';
--  name
-- -------
--  Janet
-- (1 row)


-- 9. Delete the owner named Janet.
-- apartments=# DELETE FROM property WHERE owner_id=3;
-- DELETE 1
-- apartments=# DELETE FROM owner WHERE id=3;
-- DELETE 1
-- apartments=# SELECT * FROM owner;
--  id |  name  | age
-- ----+--------+-----
--   1 | Donald |  29
--   2 | John   |  33
--   4 | Bill   |  23
--   5 | Sara   |  18
--   6 | Paul   |  44
-- (5 rows)


-- 10. Show the names of the first three owners in your owners table.
-- apartments=# SELECT * FROM owner LIMIT 3;
--  id |  name  | age
-- ----+--------+-----
--   1 | Donald |  29
--   2 | John   |  33
--   4 | Bill   |  23
-- (3 rows)



-- 11. List all properties sorted by the owners names
-- apartments=# SELECT * FROM property p INNER JOIN owner o ON p.owner_id = o.id ORDER BY o.name;
--  id |       name       | units | owner_id | id |  name  | age
-- ----+------------------+-------+----------+----+--------+-----
--   4 | Unknown Apts     |     5 |        4 |  4 | Bill   |  23
--   1 | Archstone        |    20 |        1 |  1 | Donald |  29
--   2 | Willowsprings    |    30 |        2 |  2 | John   |  33
--   5 | Southfacing Apts |    25 |        5 |  5 | Sara   |  18
-- (4 rows)


-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
-- apartments=# SELECT name FROM property WHERE id NOT IN (3,5) AND name NOT in ('Archstone');
--      name
-- ---------------
--  Willowsprings
--  Unknown Apts
-- (2 rows)


--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".
-- apartments=# ALTER TABLE property RENAME COLUMN name TO property_name;
-- ALTER TABLE


-- 14. Count the total number of properties where the owner_id is between 1 and 3.
-- apartments=# SELECT  COUNT(property_name) FROM property WHERE property.owner_id<=3 AND property.owner_id>=1;
--  count
-- -------
--      2
-- (1 row)


-- 15. Show the highest age of all owners.
-- apartments=# SELECT max(age) FROM owner ;
--  max
-- -----
--   44
-- (1 row)


-- 16. Show the name of all owners whose name starts with an E.

-- 16 THIS IS THE SAME AS 6
-- 6. Show the name of all owners whose name starts with an E.
-- apartments=# SELECT age, name FROM owner WHERE name LIKE 'E%';
--  age | name
-- -----+------
-- (0 rows)
