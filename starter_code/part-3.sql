--- Answers for Questions

--- 
qlittle=# SELECT * FROM OWNER
qlittle-# ;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  3 | Jane   |  43
  4 | Yuki   |  67
  5 | Erin   |  21
  6 | Sioban |  55
  7 | Kat    |  33
  8 | Henry  |  28
  9 | Jasmyn |  25
(9 rows)


--- 
 Donald
 John
 Jane
 Yuki
 Erin
 Sioban
 Kat
 Henry
 Jasmyn
(9 rows)

---
qlittle=# SELECT age FROM owner ORDER BY age ASC;
 age 
-----
  21
  25
  28
  29
  33
  33
  43
  55
  67
(9 rows)

---
qlittle=# SELECT name FROM owner WHERE name='Donald';
  name  
--------
 Donald
(1 row)

---
(5 rows)
qlittle=# SELECT age FROM owner WHERE age>30;
 age 
-----
  33
  33
  43
  67
  55
 (5 rows)

 ---
 qlittle=# SELECT name FROM owner WHERE name LIKE 'E%';
 name 
------
 Erin
(1 row)

---
qlittle=# UPDATE owner SET name='Janet' WHERE name='Jane';
UPDATE 1

---
qlittle=# DELETE FROM owner WHERE name='Janet';
ERROR:  update or delete on table "owner" violates foreign key constraint "property_owner_id_fkey" on table "property"
DETAIL:  Key (id)=(3) is still referenced from table "property".

---
qlittle=# SELECT name FROM owner LIMIT 3;
  name  
--------
 Donald
 John
 Yuki
(3 rows)

---
qlittle=# SELECT name FROM owner WHERE name LIKE '%a%';
  name  
--------
 Donald
 Sioban
 Jasmyn
 Janet
 Kat
(5 rows)

---
qlittle=# SELECT * FROM property WHERE name!='Archstone' AND id!=3 and id!=5 ORDER BY name ASC;
 id |        name         | units | owner_id 
----+---------------------+-------+----------
  9 | Fair Creek          |    35 |        6
  7 | Goldendale          |    15 |        4
  8 | Green Haven         |    40 |        5
 14 | Northshore          |    10 |        8
 10 | Parkview Pointe     |    50 |        9
 13 | Q Apartments        |    75 |        9
  4 | Ridgefield Bay      |     5 |        6
 11 | Royal Gardens Court |    45 |        3
 12 | Victorian Row       |    30 |        7
  2 | Zenith Hills        |    10 |        1
(10 rows)

---
qlittle=# SELECT age FROM owner ORDER BY age DESC LIMIT 1;
 age 
-----
  67
(1 row)

---
qlittle=# SELECT age FROM owner WHERE age<30 AND name LIKE '%0%' ORDER BY age DESC LIMIT 1;
 age 
-----
(0 rows)

---
qlittle=# SELECT name FROM property WHERE id<4;
     name     
--------------
 Archstone
 Zenith Hills
 Willowspring
(3 rows)







--- etc...

--- Bonuses (if attempted)
