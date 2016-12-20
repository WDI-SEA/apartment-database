-- USING THE DATABASE

-- 1. Show all the data in the owners table.
SELECT * FROM owners;

-- 2. Show the names of all owners.
SELECT name FROM owners;

-- 3. Show the ages of all of the owners in ascending order.
SELECT name FROM owners ORDER BY name DESC;

-- 4. Show the name of an owner whose name is Donald.
SELECT name FROM owners WHERE name = 'Donald';

-- 5. Show the age of all owners who are older than 30.
SELECT age FROM owners WHERE age > 30;

-- 6. Show the name of all owners whose name starts with an E.
SELECT name FROM owners WHERE name LIKE 'E%';

-- 7. Change Jane's age to 30.
UPDATE owners SET age = 30 WHERE name = 'Jane';

-- 8. Change Jane's name to Janet.
UPDATE owners SET name = 'Janet' WHERE name = 'Jane';

-- 9. Delete the owner named Janet.
DELETE FROM owners WHERE name = 'Janet';

-- 10. Show the names of the first three owners in your owners table.
SELECT name FROM owners LIMIT 3;