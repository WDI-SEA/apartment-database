--- Answers for Questions

--- 1.
SELECT * FROM owner;
--- 2.
SELECT name FROM owner;
--- 3
SELECT * FROM owner ORDER BY age ASC;
--- 4
SELECT name FROM owner WHERE name='Donald';
--- 5
SELECT * FROM owner WHERE age >=30;
--- 6
SELECT name FROM owner WHERE name = 'E%';
--- 7
UPDATE owner SET age = 30 WHERE name ='Janet';
--- 8
UPDATE owner SET name = 'Janet' WHERE name= 'JANE';
--- 9
DELETE FROM owner WHERE name ='Janet';
--- 10
SELECT name FROM owner LIMIT 3;
--- 11
SELECT name FROM owner WHERE name LIKE '%a%' OR name LIKE'A%';
--- 12
SELECT name FROM property WHERE name NOT IN  ('Archstone') AND id NOT IN (3,5) ORDER BY name ASC;
--- 13
SELECT name FROM owner ORDER BY age DESC LIMIT 1;
--- 14
SELECT name FROM owner WHERE (age < 30 AND name NOT LIKE ('%o%')) LIMIT 1;

--- 15

--- 16

--- 17

--- 18
