--- Answers for Questions

-- 1. Show all the data in the owners table.
apartments=# SELECT * FROM owners;

-- 2. Show the names of all owners.
apartments=# SELECT owners.name FROM owners;

-- 3. Show the ages of all of the owners in ascending order.
apartments=# SELECT * FROM owners ORDER BY owners.age ASC;

-- 4. Show the name of an owner whose name is Donald.
apartments=# SELECT * FROM owners WHERE name='Donald';

-- 5. Show the age of all owners who are older than 30.
apartments=# SELECT * FROM owners WHERE age > 30;

-- 6. Show the name of all owners whose name starts with an E.

-- 7. Change Jane's age to 30.
apartments=# UPDATE owners SET age=30 WHERE name='Jane';

-- 8. Change Jane's name to Janet.
apartments=# UPDATE owners SET name='Janet' WHERE name='Jane';

-- 9. Delete the owner named Janet.
apartments=# DELETE FROM owners WHERE name='Janet';
ERROR:  update or delete on table "owners" violates foreign key constraint "properties_owner_id_fkey" on table "properties"
DETAIL:  Key (id)=(3) is still referenced from table "properties".

-- 10. Show the names of the first three owners in your owners table.
apartments=# SELECT name FROM owners LIMIT 3;

-- 11. Show the name of all owners whose name contains an `a`.
apartments=# SELECT * FROM owners WHERE name LIKE '%a%';

-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
apartments=# SELECT * FROM properties WHERE name NOT IN ('Archstone') OR id NOT IN (3, 5) ORDER BY name DESC;

--I did this but it is not correct, so I need to go to TA hours in the morning for help. 

-- 13. Show the highest age of all owners.
apartments=# SELECT max(age) from owners;

-- 14. Show the highest age of owners who are under 30 and whose name contains an `o`. Limit to one result.
apartments=# SELECT max(age) from owners WHERE age < 30 AND name LIKE '%o%' LIMIT 1;

-- 15. Count the total number of properties where the owner_id is between 1 and 3.

-- BONUSES

-- 16. List all properties sorted by the owners names 

-- 17. In the properties table change the name of the column "name" to "property_name".

-- 18. Add a new property to the owner with an id of 3.