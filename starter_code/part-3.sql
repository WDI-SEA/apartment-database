--- Answers for Questions

--- 1.
SELECT * FROM owner;

--- 2. 
SELECT name FROM owner;

--- 3.
SELECT name AND age ASC FROM owner;

--- 4.
SELECT age FROM owner ORDER BY age ASC;

--- 5.
SELECT * FROM owner WHERE name LIKE 'Donald';

--- 6.
SELECT name FROM owner WHERE age > 30;

--- 7.
UPDATE owner SET age = 30 WHERE name = 'Jane';

--- 8.
UPDATE owner SET name = 'Janet' WHERE name = 'Jane';

--- 9.
DELETE FROM owner WHERE name = 'Janet';

--- 10.
SELECT name FROM owner WHERE id <= 3;

--- 11.
SELECT * FROM owner WHERE name LIKE '%a%';

--- 12.
SELECT name FROM property WHERE name NOT IN ('Archstone') AND id NOT IN (3, 5) ORDER BY name ASC; 

--- 13.
SELECT age FROM owner ORDER BY age DESC;

--- 14.
SELECT name FROM owner WHERE age < 30 AND name LIKE '%o%' ORDER BY age DESC LIMIT 1;

--- 15.
SELECT COUNT(*) owner_id FROM property WHERE owner_id <= 3;

--- Bonuses (if attempted)
---- 16.
SELECT name FROM property ORDER BY owner_id;

---- 17.
ALTER TABLE property RENAME COLUMN "name" to "Property_Name";

---- 18.
INSERT INTO property ("Property_Name", units, owner_id) VALUES ('Your Moms House', 5, 3);