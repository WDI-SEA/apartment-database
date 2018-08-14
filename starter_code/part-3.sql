--- Answers for Questions

--- 1. SELECT * FROM owner; 

--- 2. SELECT name FROM owner;

--- 3. SELECT name, age FROM owner ORDER BY age ASC; 

--- 4. SELECT name FROM owner WHERE name=‘Donald’;

--- 5. SELECT name, age FROM owner WHERE age>30; 

--- 6. SELECT name FROM owner WHERE name LIKE ‘E%’;

--- 7. UPDATE owner SET age=’30’ WHERE name=‘Jane’; 

--- 8. UPDATE owner SET name=‘Janet’ WHERE name=‘Jane’;

--- 9. DELETE from owner WHERE name=‘Janet’;

--- 10. SELECT * FROM owners ORDER BY name LIMIT 3; 

--- 11. SELECT name FROM owner WHERE name LIKE ‘%a%’;

--- 12. SELECT name FROM property WHERE NOT name=‘Archstone’ AND NOT id=‘3’ OR id=‘5’ ORDER BY name ASC; 
-- SELECT * FROM property WHERE name!='Archstone' AND id!='3' AND id!='3';

--- 13. SELECT MAX(age) FROM owner;  

--- 14. SELECT MAX(age) FROM owner WHERE age<30 AND name LIKE ‘%o%’;


