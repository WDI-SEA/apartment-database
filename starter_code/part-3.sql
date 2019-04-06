--- Answers for Questions
--- 1. Show all the data in the owners table.
SELECT * FROM owner;
--- 2. Show the names of all owners.
SELECT name FROM owner;
--- 3. Show the ages of all of the owners in ascending order.
SELECT age FROM owner ORDER BY age;
--- 4. Show the name of an owner whose name is Donald.
SELECT name FROM owner WHERE name='Donald';
--- 5. Show the age of all owners who are older than 30.
SELECT age FROM owner WHERE age > 30;
--- 6. Show the name of all owners whose name starts with an E.
SELECT name FROM owner WHERE name LIKE 'E%';
--- 7. Change Jane's age to 30.
UPDATE owner SET age = 30 WHERE name='Jane';
--- 8. Change Jane's name to Janet.
UPDATE owner SET name='Janet' WHERE name='Jane';
--- 9. Delete the owner named Janet.
DELETE FROM owner WHERE name='Janet';
--- 10. Show the names of the first three owners in your owners table.
SELECT name FROM owner ORDER BY id LIMIT 3;
--- 11. Show the name of all owners whose name contains an a.
SELECT name FROM owner WHERE name LIKE '%a%';
--- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT name FROM properties WHERE name NOT IN ('Archstone') AND id NOT IN (3, 5) ORDER BY name;
--- 13. Show the highest age of all owners.
SELECT age FROM owner ORDER BY age DESC LIMIT 1;
--- 14. Show the highest age of owners who are under 30 and whose name contains an o. Limit to one result.
SELECT age FROM owner WHERE age < 30 AND name LIKE '%o%' LIMIT 1;
--- 15. Count the total number of properties where the owner_id is between 1 and 3.
SELECT COUNT(owner_id) FROM properties WHERE owner_id > 0 AND owner_id < 4;
--- 16. List all properties sorted by the owners names
SELECT p.* FROM properties AS p JOIN owner AS o ON o.id = p.owner_id ORDER BY o.name;
--- 17. In the properties table change the name of the column "name" to "property_name".
ALTER TABLE properties RENAME COLUMN name TO property_name;
--- 18. Add a new property to the owner with an id of 3.
INSERT INTO properties (property_name, units, owner_id) VALUES ('New Apartments', 5, 3);
