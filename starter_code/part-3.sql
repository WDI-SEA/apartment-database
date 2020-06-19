--- Answers for Questions

-- 1. Show all the data in the owners table.
    SELECT * FROM owners;
-- 2. Show the names of all owners.
    SELECT name FROM owners;
-- 3. Show the ages of all of the owners in ascending order.
    SELECT age FROM owners;
-- 4. Show the name of an owner whose name is Donald.
    SELECT name FROM owners WHERE name='Donald';
-- 5. Show the age of all owners who are older than 30.
    SELECT age FROM owners WHERE age>30;
-- 6. Show the name of all owners whose name starts with an E.
    SELECT name FROM owners WHERE name LIKE '%E%';
-- 7. Change Jane's age to 30.
    UPDATE owners SET age = 30 WHERE name ='Jane';
-- 8. Change Jane's name to Janet.
    UPDATE owners SET name = 'Janet' WHERE name = 'Jane';
-- 9. Delete the owner named Janet.
    UPDATE properties SET owner_id = 6 WHERE name = 'Willowspring';
    DELETE FROM owners WHERE name = 'Janet';
-- 10. Show the names of the first three owners in your owners table.
    SELECT name FROM owners LIMIT 3;
-- 11. Show the name of all owners whose name contains an `a`.
    SELECT name FROM owners WHERE name LIKE '%a%';
-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
    SELECT name FROM properties WHERE NOT name ='Archstone' AND owner_id NOT IN (3, 5) ORDER BY name;
-- 13. Show the highest age of all owners.
    SELECT max(age) FROM owners;
-- 14. Show the highest age of owners who are under 30 and whose name contains an `o`. Limit to one result.
    SELECT max(age) FROM owners WHERE age<30 AND name LIKE '%o' LIMIT 1;
-- 15. Count the total number of properties where the owner_id is between 1 and 3.
    SELECT count(name) FROM properties WHERE owner_id > 1 AND owner_id < 3;
-- BONUSES

-- 16. List all properties sorted by the owners names 
    SELECT owners.name, properties.name
    FROM owners
    JOIN properties
    ON owners.id = properties.owner_id
    ORDER BY owners.name;
-- 17. In the properties table change the name of the column "name" to "property_name".
    ALTER TABLE properties RENAME COLUMN name TO property_name;
-- 18. Add a new property to the owner with an id of 3.