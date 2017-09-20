-- 1. Show all the data in the owners table.
SELECT * FROM  owner;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  3 | Jane   |  43
  4 | Chad   |  37
  5 | AJ     |  29
  6 | Liz    |  22



-- 2. Show the names of all owners.
SELECT name FROM owner;
  name  
--------
 Donald
 John
 Jane
 Chad
 AJ
 Liz

-- 3. Show the ages of all of the owners in ascending order.
SELECT age FROM owner;
 age 
-----
  29
  33
  43
  37
  29
  22

-- 4. Show the name of an owner whose name is Donald.
SELECT age FROM owner WHERE name='Donald';
 age 
-----
  29

-- 5. Show the age of all owners who are older than 30.
SELECT age, name FROM owner WHERE age > 30;
 age | name 
-----+------
  33 | John
  43 | Jane
  37 | Chad

-- 6. Show the name of all owners whose name starts with an E.
SELECT name FROM owner WHERE name LIKE 'E%';
 name 
------
(0 rows)

-- 7. Change Jane's age to 30.
UPDATE owner SET age = 30 WHERE name = 'Jane';
UPDATE 1

-- 8. Change Jane's name to Janet.
UPDATE owner SET name= 'Janet'  WHERE name = 'Jane';                                  
UPDATE 1

-- 9. Delete the owner named Janet.
DELETE from property WHERE owner_id=3;
DELETE 1
DELETE from owner WHERE id= 3;
DELETE 1


-- 10. Show the names of the first three owners in your owners table.
SELECT * FROM owner LIMIT 3;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Chad   |  37
(3 rows)

-- 11. List all properties sorted by the owners names
SELECT * FROM owner ORDER BY name;
 id |  name  | age 
----+--------+-----
  5 | AJ     |  29
  4 | Chad   |  37
  1 | Donald |  29
  2 | John   |  33
  6 | Liz    |  22

-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT name FROM property WHERE name!='Archstone' AND owner_id != 3 AND owner_id!= 5 ORDER BY name;
     name     
--------------
 Toilettown
 Willowspring
(2 rows)

--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".
LTER TABLE property RENAME COLUMN name TO property_name;
ALTER TABLE

-- 14. Count the total number of properties where the owner_id is between 1 and 3.
SELECT COUNT(*) FROM property WHERE owner_id >1 AND owner_id < 3;
 count 
-------
     0
(1 row)



-- 15. Show the highest age of all owners.
SELECT age FROM owner ORDER BY age DESC LIMIT 1;
 age 
-----
  37

-- 16. Show the name of all owners whose name starts with an E.
SELECT butz FROM seymour;

