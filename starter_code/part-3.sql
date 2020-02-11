--- Answers for Questions

--- 1.
SELECT * FROM owners;
--- 2. 
SELECT name FROM owners;
--- 3.
SELECT age FROM owners ORDER BY age;
--- 4.
SELECT name FROM owners WHERE name='Donald';
--- 5.
SELECT age FROM owners WHERE age > 30;
--- 6.
SELECT name FROM owners WHERE name LIKE 'E%';
--- 7.
UPDATE owners SET age=30 WHERE name='Jane';
--- 8.
UPDATE owners SET name='Janet' WHERE name='Jane';
--- 9.

--- 10.
SELECT name FROM owners LIMIT 3;
--- 11.
SELECT name FROM owners WHERE name LIKE '%a%';
--- 12.
SELECT * FROM properties WHERE NOT name='Archstone' AND NOT id=3 AND NOT id=5 ORDER BY name;
--- 13.
SELECT age FROM owners ORDER BY age DESC LIMIT 1;
--- 14.
SELECT age FROM owners WHERE age < 30 AND name LIKE '%o%' ORDER BY age DESC LIMIT 1;
--- 15.
SELECT COUNT(*) FROM properties WHERE owner_id > 0 AND owner_id < 4;

--- Bonuses (if attempted)
