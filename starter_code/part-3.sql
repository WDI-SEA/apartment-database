--- Answers for Questions

--- 1.
SELECT * FROM owners;
--- 2. 
SELECT * FROM owners, name;
--- 3.
SELECT * FROM owners ORDER BY age ASC;
--- 4.
SELECT * FROM owners WHERE name = 'Donald';
--- 5.
SELECT * FROM owners WHERE age > 30;
--- 6.
SELECT * FROM owners WHERE name LIKE '%E';
--- 7. 
UPDATE owners WHERE name = 'Jane' SET age = 30;
--- 8.
UPDATE owners WHERE name = 'Jane' SET name = 'Janet';
--- 9.
DELETE FROM owners WHERE name = 'Janet';
--- 10.
SELECT * FROM owners LIMIT 3;
--- 11.
SELECT * FROM owners WHERE name LIKE '%a%';
--- 12.
SELECT * FROM properties ORDER BY name DESC EXCEPT name = 'Archstone' and WHERE owner_id = 3 & 5;
--- 13.
SELECT max(age) FROM owners;
--- 14.
SELECT max(age) FROM owners WHERE age < 30 and WHERE name '%o%' LIMIT 1;
--- 15.
SELECT count(*) FROM properties WHERE owner_id = 1 AND owner_id = 2 AND owner_id = 3;
--- etc...

--- Bonuses (if attempted)
