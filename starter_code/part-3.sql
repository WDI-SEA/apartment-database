--- Answers for Questions

--- 1. 
1. SELECT * FROM owners;
2. SELECT name FROM owners;
3. SELECT age FROM owners ORDER BY age;
4. SELECT name FROM owners WHERE name='DONALD';
5. SELECT age FROM owners WHERE age > 30;
6. SELECT name FROM owners WHERE name LIKE 'E%';
7. UPDATE owners SET age=30 WHERE name ='Jane';
8. UPDATE owners SET name='Janet' WHERE id=3;
9. DELETE FROM owners WHERE id=3;
10. SELECT name FROM owners WHERE id < 4;
11. SELECT name FROM owners WHERE name like '%a%';
12. SELECT name FROM properties WHERE name !='Archstone' AND owner_id!=3 AND owner_id!=5 ORDER BY name;
13. SELECT age FROM owners ORDER BY age DESC LIMIT 1;
14. SELECT age FROM owners WHERE age < 30 AND name LIKE '%O%' LIMIT 1;
15. SELECT COUNT(name) FROM properties WHERE owner_id < 4;



--- 2. 

--- etc...

--- Bonuses (if attempted)
