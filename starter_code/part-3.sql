-- 1. Show all the data in the owners table.
apartments=# SELECT * FROM owner;
 id |   name    | age
----+-----------+-----
  1 | Donald    | 29
  2 | John      | 33
  3 | Jane      | 43
  4 | Jeff      | 28
  5 | Callie    | 33
  6 | Montacore | 982
(6 rows)


-- 2. Show the names of all owners.
apartments=# SELECT name FROM owner;
   name
-----------
 Donald
 John
 Jane
 Jeff
 Callie
 Montacore
(6 rows)



-- 3. Show the ages of all of the owners in ascending order.
apartments=# SELECT age FROM owner ORDER BY age;
 age
-----
 28
 29
 33
 33
 43
 982
(6 rows)


-- 4. Show the name of an owner whose name is Donald.
apartments=# SELECT name FROM owner WHERE name = 'Donald';
  name
--------
 Donald
(1 row)


-- 5. Show the age of all owners who are older than 30.
id |   name    | age
----+-----------+-----
 2 | John      | 33
 3 | Jane      | 43
 5 | Callie    | 33
 6 | Montacore | 982
(4 rows)


-- 6. Show the name of all owners whose name starts with an E.
apartments=# SELECT * FROM owner WHERE name LIKE 'E%';
 id | name | age
----+------+-----
(0 rows)


-- 7. Change Jane's age to 30.
apartments=# UPDATE owner SET age = '30' WHERE name = 'Jane';
UPDATE 1
apartments=# SELECT * FROM owner;
 id |   name    | age
----+-----------+-----
  1 | Donald    | 29
  2 | John      | 33
  4 | Jeff      | 28
  5 | Callie    | 33
  6 | Montacore | 982
  3 | Jane      | 30
(6 rows)


-- 8. Change Jane's name to Janet.
apartments=# UPDATE owner SET name = 'Janet' WHERE name = 'Jane';
UPDATE 1
apartments=# SELECT * FROM owner;
 id |   name    | age
----+-----------+-----
  1 | Donald    | 29
  2 | John      | 33
  4 | Jeff      | 28
  5 | Callie    | 33
  6 | Montacore | 982
  3 | Janet     | 30
(6 rows)


-- 9. Delete the owner named Janet.
apartments=# DELETE FROM property WHERE owner_id = 3;
DELETE 1
apartments=# DELETE FROM owner WHERE id = 3;
DELETE 1
apartments=# SELECT * FROM owner;
 id |   name    | age
----+-----------+-----
  1 | Donald    | 29
  2 | John      | 33
  4 | Jeff      | 28
  5 | Callie    | 33
  6 | Montacore | 982
(5 rows)


-- 10. Show the names of the first three owners in your owners table.
apartments=# SELECT name FROM owner LIMIT 3;
  name
--------
 Donald
 John
 Jeff
(3 rows)


-- 11. List all properties sorted by the owners names
apartments=# SELECT * FROM property JOIN owner ON owner.id = property.owner_id ORDER BY owner.name;
 id |     name     | units | owner_id | id |   name    | age
----+--------------+-------+----------+----+-----------+-----
  3 | Swing City   | 100   |        1 |  1 | Donald    | 29
  4 | Wayne Manor  | 1000  |        4 |  4 | Jeff      | 28
  5 | Bates Motel  | 3     |        2 |  2 | John      | 33
  2 | Willowspring | 30    |        6 |  6 | Montacore | 982
(4 rows)


-- 12. Show all of the properties in alphabetical order that are not named Willowspring and do not have an id of 3 or 5.
apartments=# SELECT * FROM property JOIN owner ON owner.id = property.owner_id                               WHERE property.name != 'Willowspring' AND owner.id != 1 AND owner.id != 3 ORDER BY property.name;
 id |    name     | units | owner_id | id | name | age
----+-------------+-------+----------+----+------+-----
  5 | Bates Motel | 3     |        2 |  2 | John | 33
  4 | Wayne Manor | 1000  |        4 |  4 | Jeff | 28
(2 rows)


--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".
apartments=# ALTER TABLE property RENAME COLUMN name TO property_name;
ALTER TABLE
apartments=# SELECT * FROM property;
 id | property_name | units | owner_id
----+---------------+-------+----------
  2 | Willowspring  | 30    |        6
  3 | Swing City    | 100   |        1
  4 | Wayne Manor   | 1000  |        4
  5 | Bates Motel   | 3     |        2
(4 rows)


-- 14. Count the total number of properties where the owner_id is between 1 and 3.
apartments=# SELECT COUNT(*) FROM property WHERE owner_id < 3 AND owner_id > 1;
 count
-------
     1
(1 row)


-- 15. Show the highest age of all owners.
apartments=# SELECT * FROM owner ORDER BY age DESC LIMIT 1;
 id |   name    | age
----+-----------+-----
  6 | Montacore | 982
(1 row)


-- 16. Show the name of all owners whose name starts with an E.
apartments=# SELECT * FROM owner WHERE name LIKE 'E%';
 id | name | age
----+------+-----
(0 rows)
