--- Answers for Questions

--- 1. apartments=# select * from owner;
--  id |  name   | age 
-- ----+---------+-----
--   1 | Donald  |  29
--   2 | John    |  33
--   3 | Jane    |  43
--   4 | Yuki    |  67
--   5 | Erin    |  21
--   6 | Siobahn |  55
--   7 | Sarah   |  31
--   8 | Zach    |  35
--   9 | Brian   |  34


-- --- 2. apartments=# select name from owner;
--   name   
-- ---------
--  Donald
--  John
--  Jane
--  Yuki
--  Erin
--  Siobahn
--  Sarah
--  Zach
--  Brian


-- --- 3. apartments=# SELECT age FROM owner ORDER BY age;
--  age 
-- -----
--   21
--   29
--   31
--   33
--   34
--   35
--   43
--   55
--   67


-- --- 4. SELECT name FROM owner WHERE name='Donald';
--   name  
-- --------
--  Donald


-- --- 5. apartments=# SELECT age FROM owner WHERE age > 30;
--  age 
-- -----
--   33
--   43
--   67
--   55
--   31
--   35
--   34

-- --- 6. SELECT name FROM owner WHERE name LIKE 'E%';
--  name 
-- ------
--  Erin


-- --- 7. UPDATE owner SET age=30 WHERE name='Jane';
-- UPDATE 1
-- SELECT * FROM owner WHERE name='Jane';
--  id | name | age 
-- ----+------+-----
--   3 | Jane |  30


-- --- 8. apartments=# UPDATE owner SET name='Janet' WHERE name='Jane';
-- UPDATE 1
-- apartments=# SELECT * FROM owner WHERE name='Janet';
--  id | name  | age 
-- ----+-------+-----
--   3 | Janet |  30

--- 9. apartments=# DELETE FROM owner WHERE name='Janet';
DELETE 1
apartments=# SELECT * FROM owner;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  4 | Yuki    |  67
  5 | Erin    |  21
  6 | Siobahn |  55
  7 | Sarah   |  31
  8 | Zach    |  35
  9 | Brian   |  34

--- 10. apartments=# SELECT * FROM owner LIMIT 3;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  4 | Yuki   |  67

--- 11. SELECT name FROM owner WHERE name LIKE '%a%';
  name   
---------
 Donald
 Siobahn
 Sarah
 Zach
 Brian


--- 12. SELECT * FROM property WHERE NOT name='Archstone' AND NOT id='3' AND NOT id='5' ORDER BY name;
 id |        name         | units | owner_id 
----+---------------------+-------+----------
 11 | Babbling Brooks     |    50 |        2
  8 | Fair Creek          |    35 |        8
  6 | Goldendale          |    15 |        6
  7 | Green Haven         |    40 |        7
 12 | Maple Island        |    15 |        3
  9 | Parkview Pointe     |    50 |        9
 13 | Rad Pad             |    25 |        4
  4 | Ridgefield          |     5 |        4
 10 | Royal Gardens Court |    45 |        1
  2 | Zenith Hills        |    10 |        2

--- 13. SELECT MAX(age) FROM owner;
 max 
-----
  67


--- 14. SELECT MAX(age) FROM owner WHERE age < 30;
 max 
-----
  29


--- 15. SELECT COUNT(id) FROM property WHERE owner_id >= 1 AND owner_id <=3;
 count 
-------
     6


--- 16.

--- 17.

--- 18.

--- Bonuses (if attempted)
