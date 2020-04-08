--- Answers for Questions

--- 1.
SELECT * FROM owners;

--- 2. 
SELECT names FROM owners;

--- 3.
SELECT age FROM owners ORDER BY age ASC;

--- 4.
SELECT name FROM owners WHERE name = 'Donald';

--- 5. 
SELECT age FROM owners WHERE age > '30';

--- 6.
SELECT name FROM owners WHERE name LIKE 'E%';

--- 7.
UPDATE owners SET age = 30 WHERE name = 'Jane';

--- 8. 
UPDATE owners SET name = 'Janet' WHERE name = 'Jane';

--- 9.
DELETE FROM owners WHERE name = 'Janet';

--- 10.
SELECT name FROM owners WHERE name LIKE '%a%'

--- 11. 
SELECT name FROM owners WHERE id <= 3;

--- 12.
SELECT name FROM property EXCEPT SELECT name FROM properties WHERE name = "Archstone" AND id = 3, 5;

--- 13.
SELECT max(age) FROM owners;

--- 14. 
SELECT max(age) FROM owners WHERE age <= 30 HAVING name LIKE '%o%' LIMIT 1;

--- 15.
COUNT(units) FROM owners WHERE id

--- Bonuses (if attempted)
--- 16.
SELECT * FROM properties INNER JOIN owners ON property.owner_id = owners.id;

--- 17.


--- 18.