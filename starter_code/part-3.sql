--- AnswerPart 3- seql

 1. homework=# select * from apartments;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  3 | Jane    |  43
  4 | Yuki    |  67
  5 | Erin    |  21
  6 | Siobhan |  55
  7 | ABDI    |  26
  8 | Ahmed   |  20
  9 | Bigman  |  30
(9 rows)

2.homework=# select name from apartments;
  name   
---------
 Donald
 John
 Jane
 Yuki
 Erin
 Siobhan
 ABDI
 Ahmed
 Bigman
(9 rows)

3.homework=# select age from apartments order by age ASC;
 age 
-----
  20
  21
  26
  29
  30
  33
  43
  55
  67
(9 rows)

4.homework=# select name from apartments where name = 'Donald';
  name  
--------
 Donald
(1 row)

5.homework=# select age from apartments where age > 30;
 age 
-----
  33
  43
  67
  55
(4 rows)


6.homework=# select name from apartments where name like '%E%';
 name 
------
 Erin
(1 row)

7. homework=# update apartments set age = 30 where id = 5;
UPDATE 1
homework=# select * from apartments;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  3 | Jane    |  43
  4 | Yuki    |  67
  6 | Siobhan |  55
  7 | ABDI    |  26
  8 | Ahmed   |  20
  9 | Bigman  |  30
  5 | Erin    |  30
(9 rows)

8.homework=# update apartments set name = 'Janet' where id = 5;
UPDATE 1
homework=# select * from apartments;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  3 | Jane    |  43
  4 | Yuki    |  67
  6 | Siobhan |  55
  7 | ABDI    |  26
  8 | Ahmed   |  20
  9 | Bigman  |  30
  5 | Janet   |  30
(9 rows)

9.homework=# delete from apartments where name = 'Janet';
DELETE 1
homework=# select * from apartments;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  3 | Jane    |  43
  4 | Yuki    |  67
  6 | Siobhan |  55
  7 | ABDI    |  26
  8 | Ahmed   |  20
  9 | Bigman  |  30
(8 rows)

10.homework=# select name from apartments limit 3;
  name  
--------
 Donald
 John
 Jane
(3 rows)

11.
homework=# select name from apartments where name like '%a%';
  name   
---------
 Donald
 Jane
 Siobhan
 Bigman
(4 rows)

12.homework=# select * from properties where name <> 'Archstone' AND id <> 3 AND id <> 5 order by name asc;
 id |      name      | units | apartments_id 
----+----------------+-------+---------------
 13 | Boardwalk      |   100 |            13
 12 | Emerald Courts |     7 |            12
  8 | Fair Creek     |    35 |             8
  6 | Goldendale     |    15 |             6
  7 | Green Haven    |    40 |             7
  9 | Parkview Point |    50 |             9
  4 | Ridgefield Bay |     5 |             4
 10 | Royal Gardens  |    45 |            10
 11 | Sand Piper     |    70 |            11
  2 | Zenith Hills   |    10 |             2
(10 rows)

13.homework=# select max(age) from apartments;
 max 
-----
  67
(1 row)

14. homework=# select * from apartments where age = (select max(age) from apartments where age <30) AND  name like '%o%' limit 1;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
(1 row)

homework=# 

15.homework=# select count(apartments_id) from properties where id <4;
 count 
-------
     3
(1 row)s for Questions

--- 1.

--- 2. 

--- etc...

--- Bonuses (if attempted)
