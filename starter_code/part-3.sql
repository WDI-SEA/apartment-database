-- 1. Show all the data in the owners table.
SELECT * FROM owner;
 id |     name     | age 
----+--------------+-----
  1 | Donald       |  29
  2 | John         |  33
  3 | Jane         |  43
  4 | Pig          |  19
  5 | Donkey-Bob   |  76
  6 | HorseFaceJim |  33
(6 rows)


-- 2. Show the names of all owners.
SELECT name FROM owner;
     name     
--------------
 Donald
 John
 Jane
 Pig
 Donkey-Bob
 HorseFaceJim



-- 3. Show the ages of all of the owners in ascending order.
SELECT name, age FROM owner ORDER BY age;
     name     | age 
--------------+-----
 Pig          |  19
 Donald       |  29
 John         |  33
 HorseFaceJim |  33
 Jane         |  43
 Donkey-Bob   |  76
(6 rows)


-- 4. Show the name of an owner whose name is Donald.
SELECT name FROM owner WHERE name ='Donald';
  name  
--------
 Donald
(1 row)



-- 5. Show the age of all owners who are older than 30.
SELECT * FROM owner WHERE age > 30;
 id |     name     | age 
----+--------------+-----
  2 | John         |  33
  3 | Jane         |  43
  5 | Donkey-Bob   |  76
  6 | HorseFaceJim |  33
(4 rows)



-- 6. Show the name of all owners whose name starts with an E.
SELECT * FROM owner WHERE name LIKE'E%';
 id | name | age 
----+------+-----
(0 rows)



-- 7. Change Jane's age to 30.
UPDATE owner SET age=30 WHERE name='Jane';
UPDATE 1



-- 8. Change Jane's name to Janet.
UPDATE owner SET name='Janet' WHERE name='Jane';
UPDATE 1


-- 9. Delete the owner named Janet.
DELETE FROM owner WHERE name='Janet';
DELETE 1


-- 10. Show the names of the first three owners in your owners table.
SELECT * FROM owner WHERE id <= 4;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Pig    |  19
(3 rows)



-- 11. List all properties sorted by the owners names
SELECT * FROM property ORDER BY name;
 id |           name            | units | owner_id 
----+---------------------------+-------+----------
  3 | AnyTownUSA                |    50 |         
  1 | Archstone                 |    20 |         
  4 | BarbarasSafeHomeForClowns |    11 |         
  5 | SlothEstates              |     2 |         
  2 | Willowspring              |    30 |         
(5 rows)



-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT * FROM property WHERE id != 3 AND id != 5 AND name !='Archstone' ORDER BY name;
 id |           name            | units | owner_id 
----+---------------------------+-------+----------
  4 | BarbarasSafeHomeForClowns |    11 |         
  2 | Willowspring              |    30 |     


--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".
ALTER TABLE property RENAME TO property_name;
ALTER TABLE


-- 14. Count the total number of properties where the owner_id is between 1 and 3.
SELECT COUNT(*) FROM property_name WHERE owner_id <=3;
 count 



-- 15. Show the highest age of all owners.
SELECT name FROM owner ORDER BY age DESC LIMIT 1;
    name    
------------
 Donkey-Bob
(1 row)



-- 16. Show the name of all owners whose name starts with an E.
SELECT * FROM owner WHERE name LIKE 'E%';

