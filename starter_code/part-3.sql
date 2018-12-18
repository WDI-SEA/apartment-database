--- Answers for Questions

--Show all the data in the owners table.
SELECT * FROM owner;

--Show the names of all owners.
SELECT name FROM owner;

--Show the ages of all of the owners in ascending order.
SELECT * FROM owner ORDER BY age ASC;

--Show the name of an owner whose name is Donald.
SELECT name FROM owner WHERE name='Donald';

--Show the age of all owners who are older than 30.
SELECT * FROM owner WHERE age > 30;

--Show the name of all owners whose name starts with an E.
SELECT * FROM owner WHERE name LIKE 'E%';

--Change Jane's age to 30.
UPDATE owner SET age=30 WHERE name='Jane';

--Change Jane's name to Janet.
UPDATE owner SET name='Janet' WHERE name='Jane';

--Delete the owner named Janet.
DELETE FROM owner WHERE name='Janet';

--Show the names of the first three owners in your owners table.
SELECT name FROM owner LIMIT 3;

--Show the name of all owners whose name contains an a.
SELECT name FROM owner WHERE name LIKE '%a%';

--Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT * FROM property WHERE name <> 'Archstone' AND id NOT IN (3,5) ORDER BY name ASC;

--Show the highest age of all owners.
SELECT * FROM owner ORDER BY age DESC LIMIT 1;

--Show the highest age of owners who are under 30 and whose name contains an o. Limit to one result.
SELECT * FROM owner WHERE age < 30 AND name LIKE '%o%' ORDER BY age DESC LIMIT 1;

--Count the total number of properties where the owner_id is between 1 and 3.
SELECT COUNT(owner_id) AS COUNT_OF_OWNER_IDs FROM property WHERE owner_id BETWEEN 1 AND 3;

--- Bonuses (if attempted)
--List all properties sorted by the owners names
SELECT
property.id,
property.name,
units,
owner_id,
owner.id AS Owner_Table_ID,
owner.name AS Owner_Name,
owner.age
FROM property
INNER JOIN owner ON owner.id = property.owner_id ORDER BY owner.name ASC;

--In the properties table change the name of the column "name" to "property_name".
ALTER TABLE property RENAME name TO property_name;

--Add a new property to the owner with an id of 3.
INSERT INTO property(property_name, units, owner_id)
VALUES ('Ranch', 37, 3)


