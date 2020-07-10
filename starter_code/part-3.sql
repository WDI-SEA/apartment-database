--- Answers for Questions

-- 1. Show all the data in the owners table.
LINE 1: SELECT (*) FROM owners;
                ^
apartments=# SELECT * FROM owners;
 id |  name   | age 
----+---------+-----
  1 | JOHN    |  33
  2 | Jane    |  43
  3 | Yuki    |  67
  4 | Erin    |  21
  5 | Siobhan |  55
  6 | Paul    |  27
  7 | Hayden  |  26
  8 | Jake    |  30
(8 rows)

apartments=# 

-- 2. Show the names of all owners.
apartments=# SELECT name FROM owners
apartments-# ;
  name   
---------
 JOHN
 Jane
 Yuki
 Erin
 Siobhan
 Paul
 Hayden
 Jake
(8 rows)

-- 3. Show the ages of all of the owners in ascending order.
apartments=# SELECT * FROM owners ORDER BY age asc
apartments-# ;
 id |  name   | age 
----+---------+-----
  4 | Erin    |  21
  7 | Hayden  |  26
  6 | Paul    |  27
  8 | Jake    |  30
  1 | JOHN    |  33
  2 | Jane    |  43
  5 | Siobhan |  55
  3 | Yuki    |  67
(8 rows)

apartments=# 
-- 4. Show the name of an owner whose name is Donald.
apartments=# INSERT INTO owners(name, age)
apartments-# VALUES
apartments-# ('Donald', 29)
apartments-# ;
INSERT 0 1
apartments=# SELECT name FROM owners WHERE name = 'Donald'
apartments-# ;
  name  
--------
 Donald
(1 row)

apartments=# 

-- 5. Show the age of all owners who are older than 30.
apartments=# SELECT name, age FROM owners WHERE age > 30;
  name   | age 
---------+-----
 JOHN    |  33
 Jane    |  43
 Yuki    |  67
 Siobhan |  55
(4 rows)

apartments=# 

-- 6. Show the name of all owners whose name starts with an E.
apartments=# SELECT name FROM owners WHERE name LIKE '%E%'
apartments-# ;
 name 
------
 Erin
(1 row)

apartments=# 
-- 7. Change Jane's age to 30.
update owners set age = 20 where name = 'Jane';
-- 8. Change Jane's name to Janet.
Update owners SET name = 'janet' where name = 'Jane';
-- 9. Delete the owner named Janet.
DELETE from owneres where name = 'janet';
-- 10. Show the names of the first three owners in your owners table.
SELECT name FROM owneres WHERE LIMIT 3;
-- 11. Show the name of all owners whose name contains an `a`.
SELECT name FROM owners WHERE name LIKE '%a%';
-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT * FROM porperties WHERE NOT name = 'Archstone'  AND ((ID != 3) AND (id != 5));
-- 13. Show the highest age of all owners.
SELECT MAX age FROM owners  ORDER BY age DESC LIMIT 1;
-- 14. Show the highest age of owners who are under 30 and whose name contains an `o`. Limit to one result.
SELECT MAX(age) AS highest_age FROM owners WHERE age < 30 AND name LIKE '%0%';
-- 15. Count the total number of properties where the owner_id is between 1 and 3.
SELECT COUNT(*) FROM properties WHERE id = 2;

-- BONUSES

-- 16. List all properties sorted by the owners names 

-- 17. In the properties table change the name of the column "name" to "property_name".
ALTER TABLE properties RENAME COLUMN name TO property_name;

-- 18. Add a new property to the owner with an id of 3.