1. SELECT * FROM owner;
2. SELECT name FROM owner;
3. SELECT age FROM owner ORDER BY age asc
4. SELECT name FROM owner WHERE name = 'Donald';
5. SELECT name FROM owner WHERE age > 30;
6. SELECT name FROM owner WHERE name LIKE 'E%';
7. UPDATE owner SET age = 30 WHERE name = 'Jane';
8. UPDATE owner SET name = 'Janet' where name = 'Jane';
9. DELETE FROM owner WHERE name = 'Janet';
10. SELECT name FROM owner LIMIT 3;
11 SELECT name FROM owner WHERE name LIKE '%a%';
12. SELECT name FROM property WHERE name <> 'Archstone' AND id <> 3 AND id <> 5;
13. SELECT age FROM owner ORDER BY DESC LIMIT 1;
14. SELECT age from owner WHERE age < '30' AND name LIKE '%o%';
15. SELECT name FROM property WHERE owner_id > '3' AND < '1';
16. SELECT * FROM property INNER JOIN owner ON owner.id = property.owner_id;
17. ALTER TABLE property RENAME COLUMN name TO column_name;
