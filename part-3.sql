1) SELECT * FROM owner;
2) SELECT name FROM owner;
3) SELECT age FROM owner ORDER BY age ASC;
4) SELECT name FROM owner WHERE name='Donald';
5) SELECT age FROM owner WHERE age > 30;
6) SELECT name FROM owner WHERE name LIKE 'E%';
7) UPDATE owner SET age = 30 WHERE name = Jane;
8) UPDATE owner SET name = 'Janet' WHERE id = 3;
9) DELETE FROM owner WHERE name = 'Janet';
10) SELECT name FROM owner LIMIT 3;
11) SELECT name FROM property WHERE LOWER(name) LIKE '%a%';
12) SELECT * FROM property WHERE name != 'Archstone' AND id NOT IN (3, 5);
13) SELECT max(age) FROM owner;
14) SELECT age FROM owner WHERE age < 30 AND name LIKE '%o%' OR '%O%'
ORDER BY age DESC LIMIT 1;
