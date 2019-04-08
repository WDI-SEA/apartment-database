SELECT * FROM owners;
SELECT name FROM owners;
SELECT age FROM owners ORDER BY age;
SELECT name FROM owners WHERE name = 'Donald';
SELECT age FROM owners WHERE age > 30;
SELECT name FROM owners WHERE name LIKE 'E%';
UPDATE owners SET age = 30 WHERE name = 'Jane';
UPDATE owners SET name = 'Janet' WHERE id = 3;
DELETE FROM owners WHERE name = 'Janet'; -- Won't let you do this because it's still linked to properties
SELECT name FROM owners LIMIT 3;
SELECT name FROM owners WHERE name LIKE '%a%';
SELECT * FROM properties WHERE name != 'Archstone' AND id != 3 AND id != 5;
SELECT MAX(age) FROM owners;
SELECT MAX(age) FROM owners WHERE age < 30 AND name LIKE '%o%';
SELECT COUNT(name) FROM properties WHERE owner_id <= 3 AND owner_id >= 1;
-- Bonus:
