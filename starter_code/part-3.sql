--- Answers for Questions

-- 1. Show all the data in the owners table.
SELECT * FROM owners;
-- 2. Show the names of all owners.
SELECT name FROM owners; 
-- 3. Show the ages of all of the owners in ascending order.
SELECT age FROM owners ORDER BY age DESC;
-- 4. Show the name of an owner whose name is Donald.
SELECT name FROM owners WHERE name LIKE '%Donald%';
-- 5. Show the age of all owners who are older than 30.
SELECT age FROM owners WHERE age > '30';
-- 6. Show the name of all owners whose name starts with an E.
SELECT name FROM owners WHERE name LIKE '%E%';
-- 7. Change Jane's age to 30.
UPDATE owners SET age='30' WHERE name='Jane';
-- 8. Change Jane's name to Janet.
UPDATE owners SET name='Janet' WHERE name='Jane';
-- 9. Delete the owner named Janet.
DELETE FROM properties WHERE owner_id=3;
DELETE FROM owners WHERE name='Janet';
-- I accidentally did it this way so I had to: 
INSERT INTO properties (id, name, units) VALUES ('5', 'Brookvista', '20');
--- BUT I SHOULD HAVE: 
UPDATE properties SET owner_id=null WHERE owner_id=3;
DELETE FROM owners WHERE name='Janet';
-- 10. Show the names of the first three owners in your owners table.
SELECT name FROM owners ORDER BY id ASC LIMIT 3;
-- 11. Show the name of all owners whose name contains an `a`.
SELECT name FROM owners WHERE name LIKE '%a%';
-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT * FROM properties WHERE name NOT IN ('Archstone') AND id NOT IN ('3') AND id NOT IN ('5') ORDER BY name ASC;
-- 13. Show the highest age of all owners.
SELECT MAX(age) FROM owners;
-- 14. Show the highest age of owners who are under 30 and whose name contains an `o`. Limit to one result.
SELECT MAX(age) FROM owners WHERE age < '30' AND name LIKE '%o%' LIMIT 1;
-- 15. Count the total number of properties where the owner_id is between 1 and 3.
SELECT COUNT(*) FROM properties WHERE owner_id > 1 AND owner_id < 3;
-- BONUSES

-- 16. List all properties sorted by the owners names 
SELECT p.name
FROM owners o 
JOIN properties p ON o.id=p.owner_id ORDER BY o.name ASC;
-- 17. In the properties table change the name of the column "name" to "property_name".
UPDATE properties SET name='property_name' WHERE name='name';
-- 18. Add a new property to the owner with an id of 3.
