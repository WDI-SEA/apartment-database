-- 1. Show all the data in the owners table.
apartments=# SELECT * FROM owner;
 id |  name   | age 
----+---------+-----
  1 | Donald  | 29
  2 | John    | 33
  3 | Jane    | 43
  4 | Antonia | 5
  5 | Colin   | 89
  6 | Emmy    | 53



-- 2. Show the names of all owners.
apartments=# SELECT name FROM owner;
  name   
---------
 Donald
 John
 Jane
 Antonia
 Colin
 Emmy



-- 3. Show the ages of all of the owners in ascending order.

apartments=# SELECT age FROM owner ORDER BY age ASC;
 age 
-----
 29
 33
 43
 5
 53
 89


-- 4. Show the name of an owner whose name is Donald.
apartments=# SELECT name FROM owner WHERE name = 'Donald'; 
  name  
--------
 Donald


-- 5. Show the age of all owners who are older than 30.

apartments=# SELECT name FROM owner WHERE age > '30';
  name   
---------
 John
 Jane
 Antonia
 Colin
 Emmy

-- 6. Show the name of all owners whose name starts with an E.

apartments=# SELECT name FROM owner WHERE name LIKE 'E%';
 name 
------
 Emmy


-- 7. Change Jane's age to 30.

apartments=# UPDATE owner SET age = '30' WHERE name = 'Jane';
UPDATE 1

-- 8. Change Jane's name to Janet.

apartments=# UPDATE owner SET name = 'Janet' WHERE name = 'Jane';
UPDATE 1

-- 9. Delete the owner named Janet.



-- 10. Show the names of the first three owners in your owners table.
apartments=# SELECT name FROM owner WHERE id >=1 and id <=3;
  name  
--------
 Donald
 John
 Janet


-- 11. List all properties sorted by the owners names
apartments=# SELECT * FROM property,owner ORDER BY owner.name ASC;
 id |        name         | units | owner_id | id |  name   | age 
----+---------------------+-------+----------+----+---------+-----
  1 | Archstone           | 20    |        1 |  4 | Antonia | 5
  2 | Willowspring        | 30    |        2 |  4 | Antonia | 5
  3 | Dirtyapartments     | 45    |        3 |  4 | Antonia | 5
  4 | MountainTopProperty | 1     |        4 |  4 | Antonia | 5
  5 | CardboardPenthouse  | 6     |        5 |  4 | Antonia | 5
  6 | TrashCanBungalo     | 400   |        6 |  4 | Antonia | 5
  6 | TrashCanBungalo     | 400   |        6 |  5 | Colin   | 89
  5 | CardboardPenthouse  | 6     |        5 |  5 | Colin   | 89
  4 | MountainTopProperty | 1     |        4 |  5 | Colin   | 89
  3 | Dirtyapartments     | 45    |        3 |  5 | Colin   | 89
  2 | Willowspring        | 30    |        2 |  5 | Colin   | 89
  1 | Archstone           | 20    |        1 |  5 | Colin   | 89
  1 | Archstone           | 20    |        1 |  1 | Donald  | 29
  2 | Willowspring        | 30    |        2 |  1 | Donald  | 29
  3 | Dirtyapartments     | 45    |        3 |  1 | Donald  | 29
  4 | MountainTopProperty | 1     |        4 |  1 | Donald  | 29
  5 | CardboardPenthouse  | 6     |        5 |  1 | Donald  | 29
  6 | TrashCanBungalo     | 400   |        6 |  1 | Donald  | 29
  1 | Archstone           | 20    |        1 |  6 | Emmy    | 53
  6 | TrashCanBungalo     | 400   |        6 |  6 | Emmy    | 53
  5 | CardboardPenthouse  | 6     |        5 |  6 | Emmy    | 53
  4 | MountainTopProperty | 1     |        4 |  6 | Emmy    | 53
  3 | Dirtyapartments     | 45    |        3 |  6 | Emmy    | 53
  2 | Willowspring        | 30    |        2 |  6 | Emmy    | 53
  6 | TrashCanBungalo     | 400   |        6 |  3 | Janet   | 30
  1 | Archstone           | 20    |        1 |  3 | Janet   | 30
  2 | Willowspring        | 30    |        2 |  3 | Janet   | 30
  3 | Dirtyapartments     | 45    |        3 |  3 | Janet   | 30
  4 | MountainTopProperty | 1     |        4 |  3 | Janet   | 30
  5 | CardboardPenthouse  | 6     |        5 |  3 | Janet   | 30
  6 | TrashCanBungalo     | 400   |        6 |  2 | John    | 33
  1 | Archstone           | 20    |        1 |  2 | John    | 33
  2 | Willowspring        | 30    |        2 |  2 | John    | 33
  3 | Dirtyapartments     | 45    |        3 |  2 | John    | 33
  4 | MountainTopProperty | 1     |        4 |  2 | John    | 33


-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.

apartments=# SELECT * FROM property WHERE name != 'Archstone' and id != '3'and id != '5' ORDER BY name ASC;
 id |        name         | units | owner_id 
----+---------------------+-------+----------
  4 | MountainTopProperty | 1     |        4
  6 | TrashCanBungalo     | 400   |        6
  2 | Willowspring        | 30    |        2


--- Bonuses (attempt at least 2)
--- These might require you to look up documentation online, or look at the next section in the notes.


-- 13. In the properties table change the name of the column "name" to "property_name".

apartments=# ALTER TABLE property RENAME name TO property_name;
ALTER TABLE

-- 14. Count the total number of properties where the owner_id is between 1 and 3.
apartments=# SELECT COUNT(property_name) FROM property;
 count 
-------
     6

-- 15. Show the highest age of all owners.

apartments=# SELECT name FROM owner WHERE age = (SELECT MAX(age) FROM owner);
 name  
-------
 Colin


-- 16. Show the name of all owners whose name starts with an E.
apartments=# SELECT name FROM owner WHERE name LIKE 'E%';
 name 
------
 Emmy




