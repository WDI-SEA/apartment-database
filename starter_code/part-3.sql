--- Answers for Questions

--- 1.
SELECT * FROM owner;

--- 2. 
SELECT name FROM owner;
--- 3.
SELECT age FROM owner ORDER BY age ASC;
---4. 
SELECT name FROM owner WHERE name = 'Donald';
---5. Did you really want me to show the ages or did you mean names? I put both for good measure.
SELECT age from owner WHERE age > 30;
SELECT name FROM owner WHERE age > 30;
---6. 
SELECT name FROM owner WHERE name LIKE 'E%';
---7. 
UPDATE owner SET age = 30 WHERE name = 'Jane';
---8. This one violates foreign key constraints, so I didn't go through with it.
UPDATE owner SET name = 'Janet' WHERE name = 'Jane';
---9.
DELETE FROM owner WHERE name = 'Janet';
---10.
SELECT name FROM owner LIMIT 3;
---11.
SELECT name from owner WHERE name LIKE '%a%';
---12.
SELECT * from property WHERE name NOT IN ('Archstone') AND owner_id NOT IN (3, 5) ORDER BY name ASC;
SELECT * from property WHERE name != 'Archstone' AND owner_id != 3 OR owner_id != 5 ORDER BY name ASC;
--13. 
SELECT MAX(age)from owner;
---14.
SELECT MAX(age) from owner WHERE age < 30 AND name LIKE '%o%';
---15.
SELECT COUNT(*) from property WHERE owner_id BETWEEN 1 AND 3;
--- Bonuses (if attempted)
---16.
SELECT * FROM owner o JOIN property p ON o.id = p.owner_id ORDER BY o.name ASC;
---17. 
ALTER TABLE property RENAME COLUMN name to property_name;
---18.
INSERT INTO property (property_name, units, owner_id) VALUES ('Sunshine Villa', 13, 3);
