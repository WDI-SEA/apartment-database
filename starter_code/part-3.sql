1. SELECT * FROM owner;
2. select name from owner;
3. select age from owner order by age ASC;
4. select * from owner where name = 'Donald';
5. select age from owner where age > 30;
6. select name from owner where name like 'E%';
7. UPDATE owner SET age = 30 WHERE name = 'Jane';
8. UPDATE owner SET name = 'Janet' WHERE name = 'Jane';
9. DELETE FROM owner WHERE name = 'Janet';
10. select * from owner limit 3;
11. select name from owner where name like '%a%';
12. select * from property where name != 'Archstone' AND property_id != 3 AND property_id != 5 ORDER BY name ASC;
13. select age from owner order by age DESC limit 1;
14. select age from owner where name like '%o%' AND age < 30 order by age DESC limit 1;
15. SELECT COUNT(units) FROM property where property_id <= 3 AND property_id >= 1;



