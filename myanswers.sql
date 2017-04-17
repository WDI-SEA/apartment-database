psql

CREATE DATABASE apartments;

\c apartments

CREATE TABLE owners (
id SERIAL PRIMARY KEY,
name TEXT,
age INTEGER);

CREATE TABLE properties (
id SERIAL PRIMARY KEY,
name TEXT,
units INTEGER,
owner_id INTEGER);

INSERT INTO owners
(name, age)
VALUES
('Donald', 29);

INSERT INTO owners
(name, age)
VALUES
('John', 33);

INSERT INTO owners
(name, age)
VALUES
('Jane', 43);

INSERT INTO owners
(name, age)
VALUES
('Tobias', 26);

INSERT INTO owners
(name, age)
VALUES
('Eric', 47);

INSERT INTO owners
(name, age)
VALUES
('Albert', 99);


////////


INSERT INTO properties
(name, units, owner_id)
VALUES
('ArchStone', 20, 1);

INSERT INTO properties
(name, units, owner_id)
VALUES
('Willowspring', 30, 4);

INSERT INTO properties
(name, units, owner_id)
VALUES
('Starhill', 15, 4);

INSERT INTO properties
(name, units, owner_id)
VALUES
('Bogusville', 8, 2);

INSERT INTO properties
(name, units, owner_id)
VALUES
('The Dungeon', 100, 3);


/////////

1. SELECT * FROM owners;

2. SELECT name FROM owners;

3. SELECT * FROM owners ORDER BY age;

4. SELECT * FROM owners WHERE name = 'Donald';

5. SELECT * FROM owners WHERE age > 30;

6. SELECT * FROM owners WHERE name LIKE 'E%';

7. UPDATE owners SET age = 30 WHERE name = 'Jane';

8. UPDATE owners SET name = 'Janet' WHERE id = 3;

9. DELETE FROM owners WHERE name = 'Janet';

10. SELECT * FROM owners LIMIT 3;

////// BONUS /////

1. ALTER TABLE ONLY properties RENAME COLUMN name TO property_name;

2. SELECT * FROM properties WHERE owner_id > 0 AND owner_id < 4;

3. SELECT * FROM properties WHERE property_name <> 'ArchStone' AND id <> 3 AND id <> 5 ORDER BY property_name;

4. SELECT age FROM owners ORDER BY age DESC LIMIT 1;

5. SELECT * FROM owners WHERE name LIKE 'E%';
