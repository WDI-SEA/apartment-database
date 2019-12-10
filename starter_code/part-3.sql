--- Answers for Questions
\connect apartments;

-- 1. Show all the data in the owners table.
SELECT * FROM owner;
-- Show the names of all owners.
SELECT name FROM owner;
-- Show the ages of all of the owners in ascending order.
SELECT age FROM owner ORDER BY age ASC;
-- Show the name of an owner whose name is Donald.
SELECT name FROM owner WHERE name = 'Donald';
-- Show the age of all owners who are older than 30.
SELECT age FROM owner WHERE age > 30;
-- Show the name of all owners whose name starts with an E.
SELECT name FROM owner WHERE name LIKE 'E%';
-- Change Jane's age to 30.
UPDATE owner SET age = 30 WHERE name = 'Jane';
-- Change Jane's name to Janet.
UPDATE owner SET name = 'Janet' WHERE name = 'Jane';
-- Delete the owner named Janet.
DELETE FROM owner WHERE name = 'Janet';
-- Show the names of the first three owners in your owners table.
SELECT name FROM owner LIMIT 3;
-- Show the name of all owners whose name contains an a.
SELECT name FROM owner WHERE name LIKE '%a%';
-- Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT * FROM property ORDER BY name WHERE name <> 'Archstone' AND (id <> 2 OR id <> 3);
-- Show the highest age of all owners.
SELECT age FROM owner ORDER BY age DESC LIMIT 1;
-- Show the highest age of owners who are under 30 and whose name contains an o. Limit to one result.
SELECT age FROM owner WHERE age < 30 AND name LIKE '%o%' LIMIT 1;
-- Count the total number of properties where the owner_id is between 1 and 3.
SELECT COUNT(id) FROM property WHERE owner_id > 1 AND owner_id < 3;

--- Bonuses (if attempted)
