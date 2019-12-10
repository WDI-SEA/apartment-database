--- Answers for Questions

\connect apartments;

-- 1. Show all the data in the owners table.
SELECT * FROM owner;

-- 2. Show the names of all owners.
SELECT name FROM owner;

-- 3. Show the ages of all of the owners in ascending order.
SELECT name, age FROM owner ORDER BY age ASC;

-- 4. Show the name of an owner whose name is Donald.
SELECT name FROM owner WHERE name = 'Donald';

-- 5. Show the age of all owners who are older than 30.
SELECT name, age FROM owner WHERE age > 30;

-- 6. Show the name of all owners whose name starts with an E.
SELECT name FROM owner WHERE name LIKE 'E%';

-- 7. Change Jane's age to 30.
UPDATE owner SET age=30 WHERE name='Jane';
SELECT * FROM owner;

-- 8. Change Jane's name to Janet.
UPDATE owner SET name='Janet' WHERE name='Jane';

-- 9. Delete the owner named Janet.
-- DELETE FROM movies WHERE title='Dude Wheres My Car';
DELETE FROM owner WHERE name='Janet';

-- 10. Show the names of the first three owners in your owners table.
SELECT name FROM owner LIMIT 3;

-- 11. Show the name of all owners whose name contains an `a`.
SELECT name FROM owner WHERE name LIKE '%a%';

-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT * FROM property WHERE name != 'Archstone' AND id != 3 AND id != 5 ORDER BY name ASC;

-- 13. Show the highest age of all owners.
SELECT age FROM owner ORDER BY age DESC LIMIT 1;

-- 14. Show the highest age of owners who are under 30 and whose name contains an `o`. Limit to one result.
SELECT age FROM owner WHERE age < 30 AND name LIKE '%o%' LIMIT 1;

-- 15. Count the total number of properties where the owner_id is between 1 and 3.
SELECT COUNT(*) FROM property WHERE owner_id >= 1 AND owner_id <= 3;

--- Bonuses (if attempted)
