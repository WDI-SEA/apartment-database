--- Answers for Questions

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
SELECT name FROM owner WHERE name LIKE 'E%';
-- 7. Change Jane's age to 30.
UPDATE owner SET age = 30 WHERE name = 'Jane';
-- 8. Change Jane's name to Janet.
UPDATE owner SET name = 'Janet' WHERE name ='Jane';
-- 9. Delete the owner named Janet.
DELETE FROM owner WHERE name = 'Janet'; (I didnt have properties set to owners yet, so I dont think this is right)
-- 10. Show the names of the first three owners in your owners table.
SELECT * FROM owner LIMIT 3;
-- 11. Show the name of all owners whose name contains an `a`.
SELECT name FROM owner WHERE name LIKE '%a%';
-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT name FROM properties WHERE name NOT IN ('Archstone') AND id NOT IN (3,5) ORDER BY name ASC;
-- 13. Show the highest age of all owners.
SELECT max(age) FROM owner;
-- 14. Show the highest age of owners who are under 30 and whose name contains an `o`. Limit to one result.
SELECT max(age) FROM owner WHERE age < 30 AND name LIKE '%o%' LIMIT 1;
-- 15. Count the total number of properties where the owner_id is between 1 and 3.
SELECT COUNT(properties) FROM properties WHERE owner_id < 1 AND owner_id > 3;
-- BONUSES

-- 16. List all properties sorted by the owners names 

-- 17. In the properties table change the name of the column "name" to "property_name".

-- 18. Add a new property to the owner with an id of 3.