-- 1. Show all the data in the owners table.
SELECT * FROM owner;
-- 2. Show the names of all owners.
Select name FROM owner;
-- 3. Show the ages of all of the owners in ascending order.
SELECT age FROM owner ORDER BY age ASC;
-- 4. Show the name of an owner whose name is Donald.
SELECT name FROM owner
WHERE name = 'Donald';
-- 5. Show the age of all owners who are older than 30.
SELECT age FROM owner
WHERE age > 30;
-- 6. Show the name of all owners whose name starts with an E.
SELECT name FROM owner
WHERE name LIKE '%E%';
-- 7. Change Jane's age to 30.
UPDATE owner SET age = 30
WHERE name = 'Jane';
-- 8. Change Jane's name to Janet.
UPDATE owner SET name = 'Janet'
WHERE name = "Jane";
-- 9. Delete the owner named Janet.
DELETE from owner
WHERE name = 'Janet';

-- ERROR:  update or delete on table "owner" violates foreign key constraint "property_owner_id_fkey" on table "property"
-- DETAIL:  Key (id)=(3) is still referenced from table "property".

-- Cant delete Janet because her id is referenced in property table, therefore if I delete janet it may delete her properties

-- 10. Show the names of the first three owners in your owners table.
SELECT name FROM owner LIMIT 3;
-- 11. Show the name of all owners whose name contains an `a`.
Select name from owner
where name like '%a%';

-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
Select * From property
Where name <> 'Archstone'
AND owner_id <> 3
AND owner_id <> 5
ORDER BY name ASC;
-- 13. Show the highest age of all owners.
SELECT MAX(age) FROM owner
-- 14. Show the highest age of owners who are under 30 and whose name contains an `o`. Limit to one result.
SELECT MAX(age) FROM owner
WHERE name LIKE '%o%' AND age < 30
LIMIT 1;
-- 15. Count the total number of properties where the owner_id is between 1 and 3.
SELECT count(*) FROM property
WHERE owner_id BETWEEN 1 AND 3;
-- BONUSES

-- 16. List all properties sorted by the owners names 
SELECT * FROM property
INNER JOIN owner ON property.owner_id = owner_id;
-- 17. In the properties table change the name of the column "name" to "property_name".
ALTER TABLE property
RENAME COLUMN name TO property_name;
-- 18. Add a new property to the owner with an id of 3.
INSERT INTO property (property_name, units, owner_id)
VALUES ('Elinia', 15, 3);
