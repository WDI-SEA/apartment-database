--- Answers for Questions

--- 1.
SELECT * FROM owners;

--- 2.
SELECT name FROM owners;

--- 3.
SELECT age FROM owners ORDER BY age;

--- 4.
SELECT name FROM owners WHERE name='Donald';

--- 5.
SELECT name FROM owners WHERE age>30;

--- 6.
SELECT name FROM owners WHERE name LIKE 'E%';

--- 7.
UPDATE owners SET age=30 WHERE name='Jane';

--- 8.
UPDATE owners SET name='Janet' WHERE name='Jane';

--- 9.
DELETE FROM owners WHERE name='Janet';
-- did not delete because properties table relies on the primary keys from the owners table

--- 10.
SELECT name FROM owners LIMIT 3;

--- 11.
SELECT name FROM owners WHERE name LIKE '%a%';
-- You can retrieve further uses of 'a' such as with capitalizations by including a single or multiple 'OR statements'

--- 12.
SELECT name FROM properties WHERE name NOT IN ('Archstone') AND id NOT IN ('3', '5') ORDER BY name;

--- 13.
SELECT age FROM owners ORDER BY age DESC LIMIT 1;

--- 14.
Select name FROM owners WHERE age>30 AND name LIKE '%o%' ORDER BY age DESC LIMIT 1;

--- 15.
SELECT COUNT(name) FROM properties WHERE owner_id>1 AND owner_id<3;



--- Bonuses (if attempted)

--- 16.
SELECT * FROM properties INNER JOIN owners ON owners.id=properties.owner_id ORDER BY owners.name;

--- 17.
ALTER TABLE properties
RENAME COLUMN name TO property_name;

--- 18.
INSERT INTO properties (property_name, units, owner_id) VALUES ('New New Apartments Apts', 35, 3);
-- Note new name of **propert_name**