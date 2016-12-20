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

SELECT * FROM owners;

SELECT name FROM owners;

SELECT * FROM owners ORDER BY age;

SELECT * FROM owners WHERE name = 'Donald';

SELECT * FROM owners WHERE age > 30;

SELECT * FROM owners WHERE name LIKE 'E%';

UPDATE owners SET age = 30 WHERE name = 'Jane';

UPDATE owners SET name = 'Janet' WHERE id = 3;

DELETE FROM owners WHERE name = 'Janet';

SELECT * FROM owners LIMIT 3;

////// BONUS /////
