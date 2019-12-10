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

-- List all properties sorted by the owners names
-- Need a hint for 16?
-- Look up the JOIN keyword. This allows you to pull data from two different tables based on fields they have in common.
SELECT owner.name, property.name FROM owner INNER JOIN property ON owner.id = property.owner_id ORDER BY owner.name;

-- In the properties table change the name of the column "name" to "property_name".
-- Need a hint for 17?
-- Look up documentation for ALTER TABLE. This allows you to change the schema (column name in this case).
ALTER TABLE property RENAME COLUMN name TO property_name;

-- Add a new property to the owner with an id of 3.
-- Need a hint for 18?
-- Look up INSERT INTO. Don't forget that the foreign key, `owner_id` needs to exist as an id in the owner table!
INSERT INTO property(name, units, owner_id) VALUES (Star Platinum, 58, 3);