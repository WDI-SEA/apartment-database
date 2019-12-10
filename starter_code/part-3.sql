--- Answers for Questions

--- 1.
SELECT * FROM owner;

--- 2. 
SELECT name FROM owner;

-- 3.
SELECT age FROM owner ORDER BY age;

-- 4.
SELECT name FROM owner WHERE name = 'Donald';

-- 5.
SELECT * FROM owner WHERE age > 30;

-- 6.
SELECT * FROM owner WHERE name LIKE 'E%';

-- 7.
UPDATE owner SET age = 30 WHERE name = 'Jane';

-- 8.
UPDATE owner SET name = 'Janet' WHERE name = 'Jane';

-- 9.<------
DELETE FROM owner WHERE name = 'Janet';

-- 10.
SELECT name FROM owner LIMIT 3;

-- 11.
SELECT name FROM owner WHERE name LIKE '%a%';

-- 12.
SELECT * FROM property WHERE (owner_id != 3) AND (owner_id != 5);

--13.
SELECT * FROM owner ORDER BY age DESC LIMIT 1;

-- 14.
SELECT * FROM owner WHERE age < 30 AND name LIKE '%o%' ORDER BY age LIMIT 1;

-- 15.
SELECT COUNT(owner_id) FROM property WHERE (owner_id > 1) AND (owner_id < 3);

--- Bonuses (if attempted)

-- 16.
SELECT * FROM property INNER JOIN owner ON property.owner_id=owner.id ORDER BY owner.name;

-- 17.
ALTER TABLE property RENAME COLUMN name TO property_name;

-- 18.
INSERT INTO property (property_name, units, owner_id) VALUES ('Seattle Apartments', 25, 3);

