-- Part 3: Use Your Database
-- Write down the following sql statements that are required to solve the following tasks. Place your answers in part-3.sql.

-- Show all the data in the owners table.
SELECT *
FROM owner;

-- Show the names of all owners.
SELECT name
FROM owner;

-- Show the ages of all of the owners in ascending order.
SELECT age
FROM owner
ORDER BY 1 ASC;

-- Show the name of an owner whose name is Donald.
SELECT *
FROM owner
WHERE name = 'Donald';

-- Show the age of all owners who are older than 30.
SELECT name,
  age
FROM owner
WHERE age > 30;

-- Show the name of all owners whose name starts with an E.
SELECT name
FROM owner
WHERE name LIKE "E%";

-- Change Jane's age to 30.
UPDATE owner
SET age = 30 
WHERE name = 'Jane';

-- Change Jane's name to Janet.
UPDATE owner
SET name = 'Janet' 
WHERE name = 'Jane';

-- Delete the owner named Janet.
DELETE FROM owner
WHERE name = 'Janet';

-- Show the names of the first three owners in your owners table.
SELECT name
FROM owner
LIMIT 3;

-- List all properties sorted by the owners names
SELECT owner.name,
  properties.name
FROM properties
JOIN owner 
ON properties.owner_id = owner.id
ORDER BY 1;

-- Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT *
FROM properties
WHERE name != 'Archstone'
AND id NOT IN (1, 3);

-- In the properties table change the name of the column "name" to "property_name".
ALTER TABLE "properties" RENAME COLUMN "name" TO "property_name";

-- Count the total number of properties where the owner_id is between 1 and 3.
SELECT COUNT(id)
FROM properties
WHERE owner_id BETWEEN 0 AND 4;

-- Show the highest age of all owners.
SELECT age
FROM owner
ORDER BY 1 DESC
LIMIT 1;

-- Show the name of all owners whose name starts with an E.
SELECT name
FROM owner
WHERE name LIKE "E%";


