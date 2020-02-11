--- Answers for Questions

-- Show all the data in the owners table.
SELECT * FROM owners;

-- Show the names of all owners.
SELECT name FROM owners;

-- Show the ages of all of the owners in ascending order.
SELECT age FROM owners ORDER BY age ASC;

-- Show the name of an owner whose name is Donald.
SELECT name FROM owners WHERE name = 'Donald';

-- Show the age of all owners who are older than 30.
SELECT age FROM owners WHERE age > 30;

-- Show the name of all owners whose name starts with an E.
SELECT name FROM owners WHERE name LIKE 'E%';

-- Change Jane's age to 30.
UPDATE owners SET age = 30 WHERE name = 'Jane';

-- Change Jane's name to Janet.
UPDATE owners SET name = 'Janet' WHERE name = 'Jane';

-- Delete the owner named Janet.
DELETE FROM owners WHERE name = 'Janet';

-- Show the names of the first three owners in your owners table.
SELECT name FROM owners LIMIT 3;

-- Show the name of all owners whose name contains an a.
SELECT name FROM owners WHERE name LIKE '%a%';

-- Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT * FROM properties WHERE name != 'Archstone' 
AND id != 3 AND id != 5 ORDER BY name ASC;

-- Show the highest age of all owners.
SELECT age FROM owners ORDER BY age DESC LIMIT 1;

-- Show the highest age of owners who are under 30 and whose name contains an o. Limit to one result.
SELECT age FROM owners WHERE age < 30 AND name LIKE '%o%' ORDER BY age DESC LIMIT 1;

-- Count the total number of properties where the owner_id is between 1 and 3.
SELECT COUNT(*) FROM properties WHERE owner_id <4;

-- Bonuses
-- List all properties sorted by the owners names
SELECT * FROM properties                                   
INNER JOIN owners ON properties.owner_id = owners.id                    
ORDER BY owners.name;

-- In the properties table change the name of the column "name" to "property_name".
ALTER TABLE properties
RENAME COLUMN name TO property_name;


-- Add a new property to the owner with an id of 3.
INSERT INTO properties (property_name, units, owner_id) VALUES('Coolio', 26, 3);