--- Answers for Questions

--- 1.
SELECT * FROM owners;
--- 2. 
SELECT name FROM owners;
--- 3.
SELECT name, age FROM owners ORDER BY age;
--- 4.
SELECT name FROM owners WHERE name = 'Donald';
--- 5.
SELECT name FROM owners WHERE age > 30;
--- 6.
SELECT name FROM owners WHERE name LIKE 'E%';
--- 7.
UPDATE owners SET age = 30 WHERE name = 'Jane';
--- 8.
 UPDATE owners SET name = 'Janet' WHERE id = 3;
--- 9.
SELECT * FROM properties WHERE owner_id = 3;
UPDATE properties SET owner_id = 8 WHERE owner_id = 3;
DELETE FROM owners WHERE name = 'Janet';
--- 10.
SELECT name FROM owners LIMIT 3;
--- 11.
SELECT name FROM owners WHERE name LIKE '%a%';
--- 12.
SELECT * FROM properties WHERE name != 'Archstone' AND id != 3 AND id != 5 ORDER BY name;
--- 13.
SELECT age FROM owners ORDER BY age DESC LIMIT 1;
--- 14.
SELECT age FROM owners WHERE age < 30 AND name LIKE '%o%' LIMIT 1;
--- 15.
SELECT COUNT(properties) FROM properties WHERE owner_id > 1 AND owner_id < 3;
--- Bonuses (if attempted)

--- 16.
SELECT o.name, p.name FROM owners o INNER JOIN properties p ON o.id = p.owner_id ORDER BY o.name;
--- 17.
ALTER TABLE properties RENAME COLUMN name TO property_name;
--- 18.
INSERT INTO owners (name, id, age) VALUES ('Janice', 3, 45);
INSERT INTO properties (property_name, units, owner_id) VALUES ('Ridgewood', 14, 3);