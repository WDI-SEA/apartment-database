--- Answers for Questions
1 - SELECT * FROM owners;
2 - SELECT owners.name FROM owners;
3 - SELECT owners.age FROM owners ORDER BY age;
4 - SELECT owners.name FROM owners WHERE name='Donald';
5 - SELECT age FROM owners WHERE age > 30;
6 - SELECT name FROM owners WHERE name like 'E%';
7 - UPDATE owners SET age=30 WHERE name='Jane';
8 - UPDATE owners SET name='Janet' WHERE name='Jane';
9 - DELETE FROM owners WHERE name='Janet';
10 - SELECT name FROM owners LIMIT 3;
11 - SELECT name FROM owners WHERE name like '%a%';
12 - SELECT name FROM properties WHERE name!='Archstone' AND id !=1 AND id !=3;
13 - SELECT age FROM owners ORDER BY age desc LIMIT 1;
14 - SELECT age FROM owners WHERE age < 30 AND name like '%o%' LIMIT 1;
15 - SELECT count(*) FROM properties WHERE owner_id < 3;


--- Bonuses (if attempted)
 16 - apartments=# SELECT * FROM properties
apartments-# JOIN owners ON owners.id=properties.owner_id
apartments-# ORDER BY owners.name;

17 - ALTER TABLE properties RENAME name TO property_name;

18 - INSERT INTO owners (id) VALUES (3);
INSERT INTO properties(property_name, owner_id, units) VALUES ('Soul Desert', 3, 32);