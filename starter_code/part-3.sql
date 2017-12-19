-- 1. Show all the data in the owners table.
SELECT * FROM owner;

-- 2. Show the names of all owners.
SELECT name FROM owner;

-- 3. Show the ages of all of the owners in ascending order.
SELECT age FROM owner ORDER BY age ASC;

-- 4. Show the name of an owner whose name is Donald.
SELECT name FROM owner WHERE name = 'Donald';

-- 5. Show the age of all owners who are older than 30.
SELECT age FROM owner WHERE age > 30;

-- 6. Show the name of all owners whose name starts with an E.
SELECT name FROM owner WHERE name like 'E%';

-- 7. Change Jane's age to 30.
UPDATE owner SET age = 30 where name = 'Jane';

-- 8. Change Jane's name to Janet.
UPDATE owner SET name = 'Janet' where name = 'Jane';

-- 9. Delete the owner named Janet.
DELETE FROM owner WHERE name = 'Janet';

-- 10. Show the names of the first three owners in your owners table.
SELECT name FROM owner limit 3;

-- 11. List all properties sorted by the owners names
SELECT o.name, p.* FROM property p JOIN owner o ON p.owner_id = o.id ORDER BY o.name ASC;

-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT name  FROM property WHERE name not like 'Archstone' AND id NOT IN (3,5) ORDER BY property ASC;


--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.

-- 13. In the properties table change the name of the column "name" to "property_name".
ALTER TABLE property RENAME name to property_name;


-- 14. Count the total number of properties where the owner_id is between 1 and 3.
SELECT count(*) FROM property WHERE owner_id BETWEEN 1 AND 3;

-- 15. Show the highest age of all owners.
SELECT MAX(age) FROM property p JOIN owner o ON p.owner_id = o.id;

-- 16. Show the name of all owners whose name starts with an E.
SELECT o.name from PROPERTY p JOIN owner o ON p.owner_id = o.id WHERE o.name LIKE 'E%';


