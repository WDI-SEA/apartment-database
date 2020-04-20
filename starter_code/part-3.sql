--- Answers for Questions

--- 1.
SELECT * FROM owners;

--- 2. 
SELECT name FROM owners;

--- 3.
SELECT age FROM owners ORDER BY age ASC;

--- 4.
SELECT * FROM owners WHERE name = 'Donald';

---5.
SELECT * FROM owners WHERE age > 30;

---6.
SELECT name FROM owners WHERE name LIKE 'E%';

---7. 
UPDATE owners SET age = 30 WHERE name = 'Jane';

---8.
UPDATE owners SET name = 'Janet' WHERE name = 'Jane';

---9.
DELETE FROM owners WHERE name = 'Janet';

---10.
SELECT name FROM owners LIMIT 3;

---11.
SELECT name FROM owners WHERE name LIKE '%a%';

---12. 
SELECT * FROM property WHERE property_name NOT IN ('Archstone') AND id NOT IN (3, 5) ORDER BY property_name ASC;

---13.
SELECT age FROM owners ORDER BY age DESC LIMIT 1;
SELECT MAX(age) FROM owner;

---14.
SELECT * FROM owners WHERE name > 30 AND name LIKE '%o%' LIMIT 1;

---15. 
SELECT COUNT(*) owner_id FROM property.owners_id WHERE owner_id <= 3;

--16. 
SELECT * FROM owner o JOIN property p ON o.id = p.owner_id ORDER BY o.name ASC;

--17 
ALTER TABLE property RENAME COLUMN name TO property_name;

--18
INSERT INTO owner (id, name, age) VALUES (3, 'Jane', '43');