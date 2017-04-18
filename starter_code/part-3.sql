-- ### Part 3: Use Your Database

-- INSTRUCTIONS: Write down the following sql statements that are required to solve the following tasks. Place your answers in `part-3.sql`.

-- 1. Show all the data in the owners table.
SELECT * FROM owner;
-- apartments=# SELECT * FROM owner;
--  id |   name    | age 
-- ----+-----------+-----
--   1 | Donald    |  29
--   2 | John      |  33
--   3 | Jane      |  43
--   4 | Christina |  30
--   5 | Mikey     |  28
--   6 | Estela    |  30
-- (6 rows)

-- 2. Show the names of all owners.
SELECT name FROM owner;

-- apartments=# SELECT name FROM owner;
--    name    
-- -----------
--  Donald
--  John
--  Jane
--  Christina
--  Mikey
--  Estela
-- (6 rows)



-- 3. Show the ages of all of the owners in ascending order.
SELECT age FROM owner ORDER BY owner;

-- apartments=# SELECT age FROM owner ORDER BY owner;
--  age 
-- -----
--   29
--   33
--   43
--   30
--   28
--   30
-- (6 rows)


-- 4. Show the name of an owner whose name is Donald.
SELECT name FROM owner WHERE name = 'Donald';

-- apartments=# SELECT name FROM owner WHERE name = 'Donald';
--   name  
-- --------
--  Donald
-- (1 row)

-- 5. Show the age of all owners who are older than 30.
SELECT age FROM owner WHERE age > 30;

--                                           ^
-- apartments=# SELECT age FROM owner WHERE age > 30;
--  age 
-- -----
--   33
--   43
-- (2 rows)


-- 6. Show the name of all owners whose name starts with an E.

SELECT name FROM owner WHERE name LIKE 'E%';
-- apartments=# SELECT name FROM owner WHERE name LIKE 'E%';
--   name  
-- --------
--  Estela
-- (1 row)

-- 7. Change Jane's age to 30.

UPDATE owner SET age = 30 WHERE name = 'Jane';

-- apartments=# SELECT * FROM owner;
--  id |   name    | age 
-- ----+-----------+-----
--   1 | Donald    |  29
--   2 | John      |  33
--   4 | Christina |  30
--   5 | Mikey     |  28
--   6 | Estela    |  30
--   3 | Jane      |  30
-- (6 rows)


-- 8. Change Jane's name to Janet.
 UPDATE owner SET name = 'Janet' WHERE name = 'Jane';
--  apartments=# SELECT * FROM owner;
--  id |   name    | age 
-- ----+-----------+-----
--   1 | Donald    |  29
--   2 | John      |  33
--   4 | Christina |  30
--   5 | Mikey     |  28
--   6 | Estela    |  30
--   3 | Janet     |  30
-- (6 rows)



-- 9. Delete the owner named Janet.
?????
DELETE FROM owner WHERE name = 'Janet';

-- 10. Show the names of the first three owners in your owners table.
SELECT name FROM owner WHERE id < 4;

-- apartments=# SELECT name FROM owner WHERE id < 4;
--   name  
-- --------
--  Donald
--  John
--  Janet
-- (3 rows)


-- 11. List all properties sorted by the owners names
SELECT * FROM property, owner WHERE property.id = owner_id;
-- id |     name     | units | owner_id | id |   name    | age 
-- ----+--------------+-------+----------+----+-----------+-----
--   1 | Archstone    |    20 |        1 |  1 | Donald    |  29
--   2 | Willowspring |    30 |        2 |  1 | Donald    |  29
--   3 | Leaf         |    40 |        3 |  1 | Donald    |  29
--   4 | Bark         |    50 |        4 |  1 | Donald    |  29
--   5 | Tree         |    60 |        5 |  1 | Donald    |  29
--   1 | Archstone    |    20 |        1 |  2 | John      |  33
--   2 | Willowspring |    30 |        2 |  2 | John      |  33
--   3 | Leaf         |    40 |        3 |  2 | John      |  33
--   4 | Bark         |    50 |        4 |  2 | John      |  33
--   5 | Tree         |    60 |        5 |  2 | John      |  33
--   1 | Archstone    |    20 |        1 |  4 | Christina |  30
--   2 | Willowspring |    30 |        2 |  4 | Christina |  30
--   3 | Leaf         |    40 |        3 |  4 | Christina |  30
--   4 | Bark         |    50 |        4 |  4 | Christina |  30
--   5 | Tree         |    60 |        5 |  4 | Christina |  30
--   1 | Archstone    |    20 |        1 |  5 | Mikey     |  28
--   2 | Willowspring |    30 |        2 |  5 | Mikey     |  28
--   3 | Leaf         |    40 |        3 |  5 | Mikey     |  28
--   4 | Bark         |    50 |        4 |  5 | Mikey     |  28
--   5 | Tree         |    60 |        5 |  5 | Mikey     |  28
-- :


-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.

SELECT name FROM property WHERE (name != 'Archstone') AND (id != 3) AND (id != 5) ORDER BY name ASC;
--      name     
-- --------------
--  Bark
--  Willowspring
-- (2 rows)


--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".



-- 14. Count the total number of properties where the owner_id is between 1 and 3.



-- 15. Show the highest age of all owners.
SELECT age FROM owner ORDER BY age DESC;
-- apartments=# SELECT age FROM owner ORDER BY age DESC;
--  age 
-- -----
--   33
--   30
--   30
--   30 
--   29
--   28
-- (6 rows)



-- 16. Show the name of all owners whose name starts with an E.
SELECT name FROM owner WHERE name LIKE 'E

--  name  
-- --------
--  Estela
-- (1 row)


