\connect apartments;


SELECT * FROM property;
--- Answers for Questions

--- 1. Show all data in the owners table
SELECT * FROM owner;

--- 2. Show names of all owners
SELECT name FROM owner;

--- 3. Show ages of all owners in ascending order
SELECT age FROM owner ORDER BY age;

--- 4. Show name of owner named Donald
SELECT name FROM owner WHERE name = 'Donald';

-- 5. Show age of all owners older than 30
SELECT age FROM owner WHERE age > 30;

-- 6. Show name of all owners whose name starts with an E.
SELECT name FROM owner WHERE name LIKE 'E%';

-- 7. Change Jane's age to 30
UPDATE owner SET age = '30' WHERE name = 'Jane';

-- 8. Change Jane's name to Janet.
-- UPDATE owner SET name = 'Janet' WHERE name = 'Jane';

--9. Delete owner named Janet
--DELETE FROM property WHERE owner_id = '3';
--DELETE FROM owner WHERE name = 'Janet';
SELECT * FROM owner;

--10. Show names of first 3 owners
SELECT name FROM owner LIMIT 3;

--11. Show name of all owners whose name contains an a
SELECT name FROM owner WHERE name LIKE '%a%';

--12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT * FROM property WHERE name <> 'Archstone' AND owner_id <> 3 AND owner_id <> 5 ORDER BY name;

--13. Show highest age of all owners
SELECT age FROM owner ORDER BY age DESC LIMIT 1;

--14. Show highest age of owners who are under 30 and whose name contains an "o". Limit to one result.
SELECT age FROM owner WHERE age < 30 AND name LIKE '%o%' ORDER BY age DESC LIMIT 1;

--15. Count total number o fproperties where the owner_id is between 1 and 3
SELECT * FROM property WHERE owner_id > 1 AND owner_id < 3;

--- Bonuses (if attempted)
