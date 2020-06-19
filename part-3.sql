--- Answers for Questions

--- 1.
SELECT * FROM owners;

--- 2. 
SELECT name FROM owners;

--- 3.
SELECT age FROM owners ORDER BY age ASC;

--- 4.
SELECT name FROM owners WHERE name = 'Donald';

--- 5. 
SELECT age FROM owners WHERE age > '30';

--- 6.
SELECT name FROM owners WHERE name LIKE 'E%';

--- 7.
UPDATE owners SET age = '30' WHERE name = 'Jane';

--- 8. 
UPDATE owners SET name = 'Janet' WHERE name = 'Jane';

--- 9.
DELETE FROM property WHERE owner_id = 3;
DELETE FROM owners WHERE name = 'Janet';

--- 10.
SELECT name FROM owners LIMIT 3;

--- 11. 
SELECT name FROM owners WHERE name LIKE '%a%'

--- 12.
SELECT * FROM property WHERE name NOT IN ('Archstone') AND id NOT IN (3, 5) ORDER BY property ASC;

--- 13.
SELECT max(age) FROM owners;

--- 14. 
SELECT max(age) FROM owners WHERE age <= '30' HAVING name LIKE '%o%' LIMIT 1;

--- 15.
SELECT COUNT (*) owner_id FROM property WHERE owner_id <= 3;

--- Bonuses 
--- 16.
SELECT * FROM properties INNER JOIN owners ON property.owner_id = owners.id;
SELECT * FROM owner o JOIN property p ON o.id = p.owner_id ORDER BY o.name ASC;

--- 17.
ALTER TABLE property RENAME COLUMN name TO property_name;

--- 18.
INSERT INTO owners (id, name, age) VALUES (3, 'Jane', '43');
INSERT INTO property (name, units, owner_id) VALUES ('Goldendale', 15, 3);