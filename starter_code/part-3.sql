--- Answers for Questions

--- 1.
michelaiacobucci=# SELECT name, age FROM owners
michelaiacobucci-# ;
  name   | age 
---------+-----
 Donald  |  29
 John    |  33
 Jane    |  43
 Yuki    |  67
 Erin    |  21
 Siobhan |  55
 Michael |  56
 Claire  |  40
 Sheila  |  53
(9 rows)

michelaiacobucci=# 


--- 2. 

michelaiacobucci=# SELECT name FROM owners;
  name   
---------
 Donald
 John
 Jane
 Yuki
 Erin
 Siobhan
 Michael
 Claire
 Sheila
(9 rows)

--- 3.
michelaiacobucci=# SELECT age FROM owners ORDER BY age ASC;
 age 
-----
  21
  29
  33
  40
  43
  53
  55
  56
  67
(9 rows)
--- 4.
michelaiacobucci=# SELECT name FROM owners WHERE name='Donald';
  name  
--------
 Donald
(1 row)

--- 5.
michelaiacobucci=# SELECT age FROM owners WHERE age < 30;
 age 
-----
  29
  21
(2 rows)

--- 6.
michelaiacobucci=# SELECT name FROM owners WHERE name LIKE 'e%';
 name 
------
(0 rows)

--- 7.
michelaiacobucci=# UPDATE owners SET name='Janet' WHERE name='Jane';
UPDATE 1
michelaiacobucci=# 

--- 8.
michelaiacobucci=# UPDATE owners SET age='30' WHERE age='43';
UPDATE 1
michelaiacobucci=# 

--- 9.
michelaiacobucci=# SELECT name FROM owners LIMIT 3;
  name  
--------
 Donald
 John
 Yuki
(3 rows)


--- 10.

michelaiacobucci=# SELECT name FROM owners LIKE %A% ; 
--- 11.

SELECT name
FROM properties 
WHERE name NOT IN ('Archstone') AND id NOT IN (3,5) ORDER BY name;
        name         
---------------------
 Ridgefield Bay
 Brookvista
 Goldenhale
 Green Haven
 Fair Creek
 Parkview Pointe
 Royal Gardens Court
 Royal Palms
 The Scott
 Moutain Shadows
(10 rows)


--- 12.
michelaiacobucci=# SELECT age FROM owners ORDER BY age DESC LIMIT 1;
 age 
-----
  67
(1 row)


--- 13.
michelaiacobucci=# SELECT age FROM owners WHERE age > 30 AND name LIKE '%o%' LIMIT '1';
 age 
-----
  33
(1 row)

--- 14.

SELECT age, name FROM owners WHERE age < 30 AND name LIKE '%o%'  ORDER BY age LIMIT 1;
--- 15.

michelaiacobucci=# SELECT COUNT(owner_id) FROM properties WHERE owner_id IN (1,2,3);
 count 
-------
     7
(1 row)

--- etc...


--- Bonuses (if attempted)
