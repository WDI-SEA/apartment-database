-- 1. Show all the data in the owners table.
SELECT * FROM owner;
 id |  name   | age
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  3 | Jane    |  43
  4 | Nick    |  33
  5 | Jess    |  32
  6 | Winston |  33


-- 2. Show the names of all owners.
SELECT name FROM owner;
  name
---------
 Donald
 John
 Jane
 Nick
 Jess
 Winston


-- 3. Show the ages of all of the owners in ascending order.
SELECT age FROM owner ORDER BY age;
 age
-----
  29
  32
  33
  33
  33
  43


-- 4. Show the name of an owner whose name is Donald.
SELECT name FROM owner WHERE name = 'Donald';
  name
--------
 Donald



-- 5. Show the age of all owners who are older than 30.
SELECT * FROM owner WHERE age > 30;
 id |  name   | age
----+---------+-----
  2 | John    |  33
  3 | Jane    |  43
  4 | Nick    |  33
  5 | Jess    |  32
  6 | Winston |  33

-- 6. Show the name of all owners whose name starts with an E.
SELECT * FROM owner WHERE name LIKE 'E%';
 id | name | age
----+------+-----


-- 7. Change Jane's age to 30.
UPDATE owner SET age = 30 WHERE name = 'Jane';
UPDATE 1


-- 8. Change Jane's name to Janet.
UPDATE owner SET name = 'Janet' WHERE name = 'Jane';
UPDATE 1


-- 9. Delete the owner named Janet.
DELETE FROM owner WHERE name = 'Janet';
DELETE 1


-- 10. Show the names of the first three owners in your owners table.
SELECT * FROM owner ORDER BY id LIMIT 3;
 id |  name  | age
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Nick   |  33


-- 11. List all properties sorted by the owners names
SELECT * FROM property JOIN owner ON owner.id = property.owner_id ORDER BY owner.name;
 id |     name     | units | owner_id | id |  name   | age
----+--------------+-------+----------+----+---------+-----
  1 | Archstone    |    20 |        1 |  1 | Donald  |  29
  5 | Griffin      |    20 |        5 |  5 | Jess    |  32
  2 | Willowspring |    30 |        2 |  2 | John    |  33
  4 | Meadowvale   |    15 |        4 |  4 | Nick    |  33
  3 | Brookside    |    35 |        6 |  6 | Winston |  33

-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT * FROM property WHERE id != 3 AND id != 5 AND name != 'Archstone' ORDER BY name;
 id |     name     | units | owner_id
----+--------------+-------+----------
  4 | Meadowvale   |    15 |        4
  2 | Willowspring |    30 |        2


--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".
ALTER TABLE property RENAME name TO property_name;
ALTER TABLE


-- 14. Count the total number of properties where the owner_id is between 1 and 3.
SELECT count(*) FROM property WHERE owner_id BETWEEN 1 AND 3;
 count
-------
     2

-- 15. Show the highest age of all owners.
SELECT MAX(age) FROM owner;
 max
-----


-- 16. Show the name of all owners whose name starts with an E.
SELECT * FROM owner WHERE name LIKE 'E%';
 id | name | age
----+------+-----
