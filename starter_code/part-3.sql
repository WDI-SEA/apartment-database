--- Answers for Questions

--- 1.
SELECT * FROM owner;

--- 2. 
SELECT name FROM owner;

--- 3.
SELECT age FROM owner ORDER BY age ASC;

--- 4.
SELECT * FROM owner WHERE name = 'Donald';

--- 5.
SELECT * FROM owner WHERE age > 30;

--- 6.
SELECT * FROM owner WHERE name LIKE 'E%';

--- 7.
UPDATE owner SET age='30' WHERE name = 'Jane';

--- 8.
UPDATE owner SET name='Janet' WHERE id = 3;

--- 9.
DELETE FROM owner WHERE name = 'Janet';

--- 10.
SELECT name FROM owner WHERE id < 5;

--- 11.
SELECT * FROM owner WHERE name LIKE '%a%';

--- 12.
SELECT * FROM properties WHERE id <> 1 AND id <> 3 AND id <> 5 ORDER BY name;

--- 13.
SELECT age FROM owner ORDER BY age DESC;

--- 14.
SELECT * FROM owner WHERE age < 30 AND name LIKE '%o%' LIMIT 1; 

--- 15.
SELECT * FROM properties WHERE owner_id = 2;

--- Bonuses (if attempted)
