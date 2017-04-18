-- 1. Show all the data in the owners table.
SELECT * FROM owners;


-- 2. Show the names of all owners.

SELECT name FROM owners;

-- 3. Show the ages of all of the owners in ascending order.



-- 4. Show the name of an owner whose name is Donald.

SELECT * FROM owners WHERE name = 'Donald';

-- 5. Show the age of all owners who are older than 30.

SELECT * FROM owners WHERE age > 30;

-- 6. Show the name of all owners whose name starts with an E.
SELECT name FROM owners WHERE name LIKE 'E%';


-- 7. Change Jane's age to 30.

UPDATE "owners" SET "age"=30 WHERE "id"=3 RETURNING "id", "name", "age";


-- 8. Change Jane's name to Janet.
UPDATE "owners" SET "name"='Janet' WHERE "id"=3 RETURNING "id", "name", "age";



-- 9. Delete the owner named Janet.

UPDATE "owners" SET "name"=NULL WHERE "id"=3 RETURNING "id", "name", "age";
DELETE FROM PROPERTIES WHERE owner_id = 3;
DELETE FROM owners WHERE name = 'jane';

-- 10. Show the names of the first three owners in your owners table.
SELECT * FROM owners WHERE owners_id < 4;

-- 11. List all properties sorted by the owners names

SELECT * FROM properties ORDER BY name;

-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.

SELECT * FROM properties WHERE name !='Archstone' AND owner_id !=3 AND  owner_id !=5;

--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".



-- 14. Count the total number of properties where the owner_id is between 1 and 3.
SELECT * FROM properties WHERE owners_id BETWEEN 1 and 3;

-- 15. Show the highest age of all owners.
SELECT * FROM owner;
SELECT COUNT(age) FROM owner;
SELECT COUNT(DISTINCT age) FROM owner;


-- 16. Show the name of all owners whose name starts with an E.
SELECT name FROM owners WHERE name LIKE 'E%';

