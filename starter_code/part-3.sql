--- Answers for Questions

--- 1.

SELECT * FROM owners;

--- 2. 

SELECT name FROM owners;

--- 3.

SELECT age FROM owners ORDER BY age ASC;

--- 4.

SELECT name FROM owners WHERE name='Donald';

--- 5.

SELECT age FROM owners WHERE age>30;

--- 6.

SELECT name FROM owners WHERE name LIKE 'E%';

--- 7.

UPDATE owners SET age = 30 WHERE name='Jane'; 

--- 8.

UPDATE owners SET name = 'Janet' WHERE name='Jane'; 

--- 9.

DELETE FROM owners WHERE name = 'Janet';

--- 10.

SELECT * FROM owners ORDER BY id LIMIT 3;

--- 11.

SELECT name FROM owners WHERE name LIKE '%a%';

--- 12.

SELECT * FROM properties WHERE name <> 'Archstone' AND id <> 3 AND id <> 5 ORDER BY name ASC;

--- 13.

SELECT (name, age) FROM owners ORDER BY age DESC LIMIT 1;

--- 14.

SELECT (name, age) FROM owners WHERE age<30 AND name LIKE '%o%' ORDER BY age DESC LIMIT 1;

--- 15.

SELECT COUNT(name) FROM properties WHERE owner_id >= 1 AND owner_id <= 3;

--- Bonuses (if attempted)

---16.
SELECT * FROM properties INNER JOIN owners ON owners.id=properties.owner_id ORDER BY owners.name ASC;

---17.
ALTER TABLE properties RENAME COLUMN name TO property_name;

---18.
INSERT INTO properties (property_name, units, owner_id) VALUES ('Treestump', 99, 3);