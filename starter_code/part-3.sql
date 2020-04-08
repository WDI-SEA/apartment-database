--- Answers for Questions

--- 1.
SELECT * FROM owners;
--- 2. 
SELECT name FROM owners;
--- 3.
SELECT age FROM owners;
--- 4.
SELECT name FROM owners WHERE name = 'Donald';
--- 5. 
SELECT * FROM owners WHERE age > 30;
--- 6. 
SELECT name FROM owners WHERE name LIKE 'E%';
--- 7.
UPDATE owners SET age = 30 WHERE name = 'Jane';
--- 8.
UPDATE owners SET name = 'Janet' WHERE name = 'Jane';
--- 9.
DELETE FROM owners WHERE name = 'Janet';
--- 10.
SELECT * FROM owners WHERE id < 4;
--- 11.
SELECT * FROM owners WHERE name LIKE '%a%';
--- 12. 
SELECT * FROM properties ORDER BY name ASC WHERE name != 'Archstone' AND id != 3 AND id != 5;
--- 13.
SELECT age FROM owners ORDER BY age ASC LIMIT 1;
--- 14.
SELECT * FROM owners WHERE age < 30 AND name LIKE '%o%' ORDER BY age LIMIT 1;
--- 15.
SELECT COUNT(*) FROM properties WHERE owner_id < 4;
--- Bonuses (if attempted)
--- 16.
SELECT DISTINCT properties.* FROM properties INNER JOIN table2 ON owners.id = properties.owner_id ORDER BY owners.name ASC;
--- 17.
ALTER TABLE properties CHANGE name property_name TEXT;
--- 18.
