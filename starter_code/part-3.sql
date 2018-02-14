-- 1. Show all the data in the owners table.
SELECT * FROM owner;


-- 2. Show the names of all owners.
SELECT name FROM owner;


-- 3. Show the ages of all of the owners in ascending order.
SELECT age FROM owner ORDER BY age DESC;


-- 4. Show the name of an owner whose name is Donald.
SELECT age FROM owner WHERE name = 'Donald';


-- 5. Show the age of all owners who are older than 30.
SELECT age FROM owner WHERE age > 30;


-- 6. Show the name of all owners whose name starts with an E.
SELECT name FROM owner WHERE name LIKE 'E%';


-- 7. Change Jane's age to 30.
UPDATE owner SET age = '30' WHERE name = 'Jane';


-- 8. Change Jane's name to Janet.
UPDATE owner SET name = 'Janet' WHERE id = 3;


-- 9. Delete the owner named Janet.
DELETE FROM owner WHERE name = 'Janet';


-- 10. Show the names of the first three owners in your owners table.
SELECT name FROM owner LIMIT 3;


-- 11. List all properties sorted by the owners names
SELECT * FROM property JOIN owner ON owner.id = property.owner_id ORDER BY owner.name;
-- This is also valid
-- SELECT * FROM property p JOIN owner o ON o.id = p.owner_id ORDER BY o.name;


-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT * FROM property WHERE NOT name = 'Archstone' AND NOT id = '3' AND NOT id = '5' ORDER BY name;


--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".
ALTER TABLE property RENAME COLUMN name TO property_name;


-- 14. Count the total number of properties where the owner_id is between 1 and 3.
-- SELECT COUNT(*) FROM property WHERE owner_id > 1 AND owner_id < 3;
SELECT COUNT(*) FROM property WHERE owner_id BETWEEN 1 AND 3;


-- 15. Show the highest age of all owners.
SELECT age FROM owner ORDER BY age DESC LIMIT 1;


-- 16. Show the name of all owners whose name starts with an E.
SELECT name FROM owner WHERE name LIKE 'E%';
