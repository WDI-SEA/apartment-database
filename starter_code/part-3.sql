-- 1. Show all the data in the owners table.
apartments=# SELECT * FROM owners;
 id |  name  | age
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  3 | Jane   |  43
  4 | Greg   |  53
  5 | Kate   |  83
  6 | Barney |  59
(6 rows)


-- 2. Show the names of all owners.
apartments=# SELECT name FROM owners;
  name
--------
 Donald
 John
 Jane
 Greg
 Kate
 Barney
(6 rows)



-- 3. Show the ages of all of the owners in ascending order.

apartments=# SELECT age FROM owners ORDER BY age  ASC;
 age
-----
  29
  33
  43
  53
  59
  83
(6 rows)

-- 4. Show the name of an owner whose name is Donald.

apartments=# SELECT name FROM owners
apartments-# WHERE name = 'Donald';
  name
--------
 Donald
(1 row)

-- 5. Show the age of all owners who are older than 30.
apartments=# SELECT name FROM owners WHERE age > 30;
  name
--------
 John
 Jane
 Greg
 Kate
 Barney
(5 rows)


-- 6. Show the name of all owners whose name starts with an E.

apartments=# SELECT name FROM owners WHERE name LIKE 'J%'
apartments-# ;
 name
------
 John
 Jane
(2 rows)

-- 7. Change Jane's age to 30. i did the age change before changing Jane's name
apartments=# UPDATE owners  SET age = 30 WHERE name = 'Janet';
UPDATE 1
apartments=# SELECT * FROM owners                                                                                                                     ;
 id |  name  | age
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Greg   |  53
  5 | Kate   |  83
  6 | Barney |  59
  3 | Janet  |  30
(6 rows)


-- 8. Change Jane's name to Janet.
apartments=# UPDATE owners  SET name = 'Janet' WHERE name = 'Jane';
UPDATE 1
apartments=# SELECT * FROM owners
apartments-# ;
 id |  name  | age
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Greg   |  53
  5 | Kate   |  83
  6 | Barney |  59
  3 | Janet  |  43
(6 rows)




-- 9. Delete the owner named Janet.
apartments=# DELETE FROM owners WHERE id=3;
ERROR:  update or delete on table "owners" violates foreign key constraint "properties_owner_id_fkey" on table "properties"
DETAIL:  Key (id)=(3) is still referenced from table "properties".
apartments=# DELETE FROM properties  WHERE owner_id=3;
DELETE 1
apartments=# DELETE FROM owners  WHERE name='Janet;
apartments'# ';
DELETE 0
apartments=# DELETE FROM owners  WHERE name='Janet';                                                                                                  ';
DELETE 1
apartments'# SELECT * FROM owners
apartments'# ;
apartments'#
apartments'# ';
ERROR:  syntax error at or near "';
SELECT * FROM owners
;

'"
LINE 1: ';
        ^
apartments=# SELECT * FROM owners;                                                                                                                     id |  name  | age
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Greg   |  53
  5 | Kate   |  83
  6 | Barney |  59
(5 rows)


-- 10. Show the names of the first three owners in your owners table.
apartments=# SELECT * FROM owners WHERE id < 4;
 id |  name  | age
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
(2 rows)


-- 11. List all properties sorted by the owners names
apartments=# SELECT *  FROM properties JOIN owners ON owners.id=properties.owner_id  ORDER BY owners.name;
 id |     name     | units | owner_id | id |  name  | age
----+--------------+-------+----------+----+--------+-----
  1 | Archstone    |    20 |        6 |  6 | Barney |  59
  6 | Indigo       |    10 |        1 |  1 | Donald |  29
  3 | Funke        |   300 |        4 |  4 | Greg   |  53
  5 | Condos       |   100 |        2 |  2 | John   |  33
  2 | Willowspring |    30 |        5 |  5 | Kate   |  83
(5 rows)




-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
apartments=# SELECT * FROM properties WHERE NOT name='Archstone' AND NOT id= 3 AND NOT id= 5;
 id |     name     | units | owner_id
----+--------------+-------+----------
  2 | Willowspring |    30 |        5
  6 | Indigo       |    10 |        1
(2 rows)


--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".



-- 14. Count the total number of properties where the owner_id is between 1 and 3.



-- 15. Show the highest age of all owners.
apartments=# SELECT age FROM owners WHERE age>60;
 age
-----
  83
(1 row)


-- 16. Show the name of all owners whose name starts with an E.
apartments=# SELECT name FROM owners WHERE name LIKE 'E%'
apartments-# ;
 name
------
(0 rows)
