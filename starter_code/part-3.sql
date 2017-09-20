-- 1. Show all the data in the owners table.

apartments=# SELECT * FROM owners;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  3 | Jane   |  43
  4 | Martha |  35
  5 | Bob    |  52
  6 | Abby   |  34
(6 rows)



-- 2. Show the names of all owners.

apartments=# SELECT name FROM owners;
  name  
--------
 Donald
 John
 Jane
 Martha
 Bob
 Abby
(6 rows)



-- 3. Show the ages of all of the owners in ascending order.

apartments=# SELECT age, name FROM owners ORDER BY age;
 age |  name  
-----+--------
  29 | Donald
  33 | John
  34 | Abby
  35 | Martha
  43 | Jane
  52 | Bob
(6 rows)




-- 4. Show the name of an owner whose name is Donald.

apartments=# SELECT * FROM owners WHERE name = 'Donald';
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
(1 row)



-- 5. Show the age of all owners who are older than 30.

apartments=# SELECT * FROM owners WHERE age > 30;
 id |  name  | age 
----+--------+-----
  2 | John   |  33
  3 | Jane   |  43
  4 | Martha |  35
  5 | Bob    |  52
  6 | Abby   |  34
(5 rows)


-- 6. Show the name of all owners whose name starts with an E.

apartments=# SELECT * FROM owners WHERE name LIKE 'E%';
 id | name | age 
----+------+-----
(0 rows)

-- 7. Change Jane's age to 30.

apartments=# UPDATE owners SET age = 30 WHERE name = 'Jane';
UPDATE 1
apartments=# SELECT * FROM owners WHERE name = 'Jane'; 
 id | name | age 
----+------+-----
  3 | Jane |  30
(1 row)


-- 8. Change Jane's name to Janet.

apartments=# UPDATE owners SET name = 'Janet' WHERE name = 'Jane';
UPDATE 1
apartments=# SELECT * FROM owners WHERE name = 'Janet';
 id | name  | age 
----+-------+-----
  3 | Janet |  30
(1 row)


-- 9. Delete the owner named Janet.

apartments=# DELETE FROM properties WHERE owners_id='3';
DELETE 1
apartments=# SELECT * FROM owners;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Martha |  35
  5 | Bob    |  52
  6 | Abby   |  34
  3 | Janet  |  30
(6 rows)

apartments=# DELETE FROM owners WHERE name = 'Janet';
DELETE 1
apartments=# SELECT * FROM owners;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Martha |  35
  5 | Bob    |  52
  6 | Abby   |  34
(5 rows)




-- 10. Show the names of the first three owners in your owners table.


apartments=# SELECT * FROM owners WHERE id < 5;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Martha |  35
(3 rows)

-- 11. List all properties sorted by the owners names

apartments=# SELECT * FROM properties ORDER BY owners_id;
 id |     name     | units | owners_id 
----+--------------+-------+-----------
  1 | Archstone    |    20 |         1
  2 | Willowspring |    30 |         2
  4 | Willowcreek  |    35 |         4
  5 | Silverfalls  |    25 |         5
  6 | Gemheights   |    55 |         6
(5 rows)


-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.

apartments=# SELECT * FROM properties WHERE id != 3 AND id !=5 AND name != 'Archstone' ORDER BY name;
 id |     name     | units | owners_id 
----+--------------+-------+-----------
  6 | Gemheights   |    55 |         6
  4 | Willowcreek  |    35 |         4
  2 | Willowspring |    30 |         2
(3 rows)


--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".

apartments=# ALTER TABLE properties RENAME name TO properties_name;
ALTER TABLE
apartments=# SELECT * FROM properties;
 id | properties_name | units | owners_id 
----+-----------------+-------+-----------
  1 | Archstone       |    20 |         1
  2 | Willowspring    |    30 |         2
  4 | Willowcreek     |    35 |         4
  5 | Silverfalls     |    25 |         5
  6 | Gemheights      |    55 |         6
(5 rows)


-- 14. Count the total number of properties where the owner_id is between 1 and 3.

apartments=# SELECT COUNT(*) FROM properties WHERE id < 4;
 count 
-------
     2
(1 row)


-- 15. Show the highest age of all owners.

apartments=# SELECT name FROM owners ORDER BY age DESC LIMIT 1;
 name 
------
 Bob
(1 row)

-- 16. Show the name of all owners whose name starts with an E.

apartments=# SELECT * FROM owners WHERE name LIKE 'E%';
 id | name | age 
----+------+-----
(0 rows)

