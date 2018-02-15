-- 1. Show all the data in the owners table.
apartments=# SELECT * FROM owners;


-- 2. Show the names of all owners.
apartments=# SELECT name FROM owners;


-- 3. Show the ages of all of the owners in ascending order.
apartments=# SELECT age FROM owners ORDER BY age;


-- 4. Show the name of an owner whose name is Donald.
apartments=# SELECT * FROM owners WHERE name = 'Donald';


-- 5. Show the age of all owners who are older than 30.
apartments=# SELECT age FROM owners WHERE age > 30;


-- 6. Show the name of all owners whose name starts with an E.
apartments=# SELECT name FROM owners WHERE name LIKE  'E%';


-- 7. Change Jane's age to 30.
apartments=# UPDATE owners SET age = 30
apartments-# WHERE name = 'Jane';


-- 8. Change Jane's name to Janet.
apartments=# UPDATE owners SET name = 'Janet' WHERE name = 'Jane';


-- 9. Delete the owner named Janet.
-- Jane was linked to a property so I changed propery owner id first then deleted her
apartments=# UPDATE properties SET owner_id = 1;
apartments=# DELETE FROM owners WHERE name = 'Janet';


-- 10. Show the names of the first three owners in your owners table.
apartments=# SELECT name FROM owners LIMIT 3;


-- 11. List all properties sorted by the owners names
apartments=# SELECT *
FROM properties
JOIN owners ON owners.id = properties.owner_id
ORDER BY owners.name;


-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
apartments=# SELECT * FROM properties WHERE name !~ 'Archstone'
AND id NOT IN (3, 5);


--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".



-- 14. Count the total number of properties where the owner_id is between 1 and 3.



-- 15. Show the highest age of all owners.



-- 16. Show the name of all owners whose name starts with an E.
