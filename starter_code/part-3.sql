1.samhawkins=# select * from owners                                                                             ;
 id |    name    | age
----+------------+-----
  1 | Donald     |  29
  2 | John       |  33
  3 | Jane       |  43
  4 | Yuki       |  67
  5 | Erin       |  21
  6 | Siobhan    |  55
  7 | abby       |  90
  8 | will       |  30
  9 | sam        |  17
(9 rows)

2.samhawkins=# select * from properties                                                                         ;
 id |        name         | units | owner_id
----+---------------------+-------+----------
  1 | Archstone           |    20 |        3
  2 | Zenith Hills        |    10 |        2
  3 | Willowspring        |    30 |        6
  4 | Ridgefield Bay      |     5 |        1
  5 | Brookvista          |    20 |        5
  6 | Goldendale          |    15 |        4
  7 | Green Haven         |    40 |        1
  8 | Fair Creek          |    35 |        4
  9 | Parkview Pointe     |    50 |        6
 10 | Royal Gardens Court |    45 |        3
 11 | seattle             |    30 |        3
 12 | willows crest       |    40 |        8
 13 | Love Park           |    39 |        7
(13 rows)

3.samhawkins=# SELECT age FROM owners ORDER BY age ASC;
 age
-----
  21
  29
  33
  43
  55
  60
  67
  71
  90
(9 rows)

samhawkins=# SELECT owner FROM owners WHERE name = 'Donald';
ERROR:  column "owner" does not exist
LINE 1: SELECT owner FROM owners WHERE name = 'Donald';
               ^
4.samhawkins=# SELECT name FROM owners WHERE name = 'Donald';
  name
--------
 Donald
(1 row)

5.samhawkins=# SELECT age FROM owners WHERE age > 30;
 age
-----
  33
  43
  67
  55
 969
  71
  60
(7 rows)

6.samhawkins=# SELECT name FROM owners WHERE name LIKE '%E%';
 name
------
 Erin
(1 row)

samhawkins=# SELECT name FROM owners WHERE name LIKE 'E%';
 name
------
 Erin
(1 row)

7.samhawkins=# UPDATE owners SET age = 30 WHERE name = 'Jane';
UPDATE 1
8.samhawkins=# UPDATE owners SET name = 'Janet' WHERE name = 'Jane';
UPDATE 1

9. samhawkins=# DELETE FROM owners WHERE name = 'Janet';
ERROR:  update or delete on table "owners" violates foreign key constraint "properties_owner_id_fkey" on table "properties"
DETAIL:  Key (id)=(3) is still referenced from table "properties".
samhawkins=# DELETE name FROM owners WHERE name = 'Janet';
ERROR:  syntax error at or near "name"
LINE 1: DELETE name FROM owners WHERE name = 'Janet';
               ^
samhawkins=# DELETE owners FROM owners WHERE name = 'Janet';
ERROR:  syntax error at or near "owners"
LINE 1: DELETE owners FROM owners WHERE name = 'Janet';
               ^
10.samhawkins=# SELECT name FROM owners WHERE id < 4;
  name
--------
 Donald
 John
 Janet
(3 rows)

11.samhawkins=# SELECT name FROM owners WHERE name LIKE '%a%'
samhawkins-# ;
    name
------------
 Donald
 Siobhan
 sam
 abby
 Janet
(5 rows)

12.samhawkins=#  SELECT * FROM properties WHERE name != 'Archstone' AND id != 3 AND id != 5 ORDER BY name;
 id |        name         | units | owner_id
----+---------------------+-------+----------
  8 | Fair Creek          |    35 |        4
  6 | Goldendale          |    15 |        4
  7 | Green Haven         |    40 |        1
 12 | willows crest       |    40 |        8
 13 | Katorga             |    49 |        9
 11 | seattle             |    30 |        3
  9 | Parkview Pointe     |    50 |        6
  4 | Ridgefield Bay      |     5 |        1
 10 | Royal Gardens Court |    45 |        3
  2 | Zenith Hills        |    10 |        2
(10 rows)

13.samhawkins=# SELECT max(age) FROM owners;
 max
-----
 90
(1 row)

14.samhawkins=# SELECT max(age) FROM owners WHERE age < 30 AND name LIKE '%o%' LIMIT 1;
 max
-----
  29
(1 row)

15.samhawkins=# SELECT COUNT(*) FROM properties WHERE owner_id > 0 AND owner_id < 4;
 count
-------
     6
(1 row)

samhawkins=#
