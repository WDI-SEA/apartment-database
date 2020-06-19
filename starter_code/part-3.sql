--- Answers for Questions

-- 1. Show all the data in the owners table.
select *
from owners;
-- 2. Show the names of all owners.
select name
from owners;
-- 3. Show the ages of all of the owners in ascending order.
select age
from owners
order by age asc;
-- 4. Show the name of an owner whose name is Donald.
select name
from owners
where name
LIKE '%Donald%';
-- 5. Show the age of all owners who are older than 30.
SELECT *
FROM owners
WHERE age > 30;
-- 6. Show the name of all owners whose name starts with an E.
SELECT *
FROM owners
WHERE name
LIKE 'E%';
-- 7. Change Jane's age to 30.
UPDATE owners
SET age = 30
WHERE name = 'Jane';
-- 8. Change Jane's name to Janet.
UPDATE owners
SET name = 'Janet'
WHERE name = 'Jane';
-- 9. Delete the owner named Janet.
DELETE FROM properties
WHERE owner_id = 3;

DELETE FROM owners
WHERE name = 'Janet';
-- 10. Show the names of the first three owners in your owners table.
SELECT name
FROM owners
LIMIT 3;
-- 11. Show the name of all owners whose name contains an `a`.
SELECT name
FROM owners
WHERE name
LIKE '%a%';
-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT *
FROM properties
WHERE name
NOT IN ('Archstone') AND
owner_id NOT IN (3, 5)
ORDER BY name ASC;

-- 13. Show the highest age of all owners.
SELECT max(age)
FROM owners;

SELECT *
FROM owners
ORDER BY age DESC
LIMIT 1;
-- 14. Show the highest age of owners who are under 30 and whose name contains an `o`. Limit to one result.
SELECT *
FROM owners
WHERE name
LIKE '%o%' AND
age < 30
ORDER BY age DESC
LIMIT 1;

-- 15. Count the total number of properties where the owner_id is between 1 and 3.
SELECT count(*)
FROM properties
WHERE owner_id
BETWEEN 1 AND 3;
-- BONUSES

-- 16. List all properties sorted by the owners names 

-- 17. In the properties table change the name of the column "name" to "property_name".

-- 18. Add a new property to the owner with an id of 3.