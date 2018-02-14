-- 1. Show all the data in the owners table.
apartments=# SELECT * FROM owners;
 id |  name  | age
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  3 | Jane   |  43
  4 | Sahira |  25
  5 | Gemma  |  76
  6 | Fritz  |  52
(6 rows)

-- 2. Show the names of all owners.
apartments=# SELECT name FROM owners;
  name
--------
 Donald
 John
 Jane
 Sahira
 Gemma
 Fritz
(6 rows)

-- 3. Show the ages of all of the owners in ascending order.
apartments=# SELECT age FROM owners;
 age
-----
  29
  33
  43
  25
  76
  52
(6 rows)

-- 4. Show the name of an owner whose name is Donald.
apartments=# SELECT name FROM owners WHERE name='Donald';
  name
--------
 Donald
(1 row)

-- 5. Show the age of all owners who are older than 30.
apartments=# SELECT age FROM owners WHERE age > 30;
 age
-----
  33
  43
  76
  52
(4 rows)

-- 6. Show the name of all owners whose name starts with an E.
apartments=# SELECT name FROM owners WHERE name LIKE 'E%';


-- 7. Change Jane's age to 30.
apartments=# UPDATE owners SET age = 30 WHERE name = 'Jane';


-- 8. Change Jane's name to Janet.
apartments=# UPDATE owners SET name = 'Janet' WHERE name = 'Jane';


-- 9. Delete the owner named Janet.
apartments=# DELETE FROM owners WHERE name = 'Janet';


-- 10. Show the names of the first three owners in your owners table.
apartments=# SELECT * FROM owners WHERE id < 4;


-- 11. List all properties sorted by the owners names
apartments=# apartments=# SELECT * FROM properties JOIN owners ON owners.id = properties.owner_id ORDER BY owners.name;

-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
apartments=# SELECT * FROM properties WHERE NOT name = 'Archstone' AND NOT id = '3' AND NOT id = '5';


--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".
apartments=# ALTER TABLE owners RENAME COLUMN name TO property_name
--THIS WORKS


-- 14. Count the total number of properties where the owner_id is between 1 and 3.
apartments=#  SELECT COUNT(owner_id) FROM properties WHERE owner_id < 4;
-- DID NOT WORK
-- SELECT COUNT(*) FROM properties;

-- 15. Show the highest age of all owners.
apartments=# SELECT MAX(age) FROM owners;
-- THIS WORKS

-- 16. Show the name of all owners whose name starts with an E.
apartments=# SELECT * FROM owners WHERE name = 'E%';
-- THIS WORKS
