--- Answers for Questions

--- 1.
SELECT * FROM owner;
--- 2. 
SELECT name FROM owner;
--- 3.
SELECT age FROM owner ORDER BY age ASC;
--- 4.
SELECT name FROM owner WHERE name = 'Donald';
--- 5.
SELECT age FROM owner WHERE age >= 30;
--- 6.
SELECT name FROM owner WHERE name like 'E%';
--- 7.
UPDATE owner SET age = 30 WHERE name = 'Jane';
--- 8.
UPDATE owner SET name = 'Janet' WHERE name = 'Jane';
--- 9.
DELETE from owner where name = 'Janet';
--- 10.
SELECT name FROM owner LIMIT 3;
--- 11.
SELECT name FROM owner WHERE name LIKE '%a%';
--- 12.
SELECT * FROM property WHERE name NOT LIKE '%Archstone%'
AND id != 3 AND id != 5 ORDER BY name ASC;  
--- 13.
SELECT MAX(age) AS age FROM owner;
--- 14.
SELECT MAX(age) AS age FROM owner 
WHERE name LIKE '%o%' AND age < 30
LIMIT 1;
--- 15.
SELECT COUNT(DISTINCT id) AS NumberOfProperties 
FROM property WHERE CAST(owner_id AS INT) BETWEEN 1 AND 3;
--- Bonuses (if attempted)
--- 16.
SELECT p.name, o.name FROM property p
JOIN owner o on CAST(p.owner_id AS INT) = o.id
ORDER BY o.name ASC;
--- 17.
ALTER TABLE property RENAME COLUMN "name" TO "property_name";
--- 18.
INSERT INTO owner (id, name, age)
VALUES
(3, 'Jane', 43);

INSERT INTO properties (name, units, owner_id)
VALUES
('Mission Villas', 30, '3');