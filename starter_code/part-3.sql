-- 1. Show all the data in the owners table.
SELECT * FROM owner;


-- 2. Show the names of all owners.
SELECT name FROM owner;


-- 3. Show the ages of all of the owners in ascending order.
SELECT * FROM owner ORDER BY age ASC;


-- 4. Show the name of an owner whose name is Donald.
SELECT * FROM owner WHERE name = 'Donald';


-- 5. Show the age of all owners who are older than 30.
SELECT * FROM owner WHERE age > 30;


-- 6. Show the name of all owners whose name starts with an E.
SELECT * FROM owner WHERE name = 'E%';


-- 7. Change Jane's age to 30.
UPDATE owner SET age = 30 WHERE name = 'Jane';


-- 8. Change Jane's name to Janet.
UPDATE owner SET name = 'Janet' WHERE name = 'Jane';


-- 9. Delete the owner named Janet.
DELETE FROM owner WHERE name = 'Janet';


-- 10. Show the names of the first three owners in your owners table.
SELECT * FROM owner ORDER BY id LIMIT 3;


-- 11. List all properties sorted by the owners names
SELECT * FROM property, owner WHERE owner_id = owner.id ORDER BY owner.name;


-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT * FROM property WHERE name != 'Archstone' AND id != 3 AND id != 5 ORDER BY name;


--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".
ALTER TABLE property RENAME COLUMN name TO property_name;


-- 14. Count the total number of properties where the owner_id is between 1 and 3.
SELECT COUNT(*) FROM property WHERE owner_id <= 3 AND owner_id >= 1;


-- 15. Show the highest age of all owners.
SELECT max(age) FROM owner;


-- 16. Show the name of all owners whose name starts with an E.
SELECT name FROM owner WHERE name = 'E%';

