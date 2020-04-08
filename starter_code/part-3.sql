--- Answers for Questions

--- 1.
SELECT * FROM owners;

--- 2. 
SELECT name FROM owners;

--- 3.
SELECT name, age FROM owners ORDER BY age;

--- 4.
SELECT * FROM owners WHERE name = 'Donald';

--- 5.
SELECT * FROM owners WHERE age > 30;

--- 6.
SELECT * FROM owners WHERE name LIKE 'E%';

--- 7.
UPDATE owners SET age = 30 WHERE name = 'Jane';

--- 8.
UPDATE owners SET name = 'Janet' WHERE name = 'Jane';

--- 9.
DELETE FROM owners WHERE name = 'Janet';

--- 10.
SELECT name FROM owners LIMIT 3;

--- 11.
SELECT name FROM owners WHERE name LIKE '%a%';

--- 12.
SELECT * FROM properties WHERE name <> 'Archstone' AND id <> 3 AND id <> 5 ORDER BY name;

--- 13.
SELECT age FROM owners ORDER BY desc LIMIT 1;

--- 14.
SELECT * FROM owners WHERE name > 30 AND name LIKE '%o%' LIMIT 1;

--- 15.
SELECT COUNT(UNITS) FROM properties WHERE owner_id = 1 AND owner_id = 2 AND owner_id = 3:

--- Bonuses (if attempted)
