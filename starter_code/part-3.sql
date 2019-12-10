--- Answers for Questions

---1	Show all the data in the owners table.

SELECT * FROM owner;

---2	Show the names of all owners.

SELECT name FROM owner;

---3	Show the ages of all of the owners in ascending order.

SELECT age FROM owner ORDER BY age ASC;

---4	Show the name of an owner whose name is Donald.

SELECT * FROM owner WHERE name = 'Donald';

---5	Show the age of all owners who are older than 30.

SELECT * FROM owner WHERE age>30;


---6	Show the name of all owners whose name starts with an E.

SELECT name FROM owner WHERE name LIKE 'E%';

---7	Change Jane's age to 30.

UPDATE owner
SET age = 30
WHERE name='Jane';

---8	Change Jane's name to Janet.

UPDATE owner
SET name = 'Janet'
WHERE name='Jane';
                                                                                                                                    

---9	Delete the owner named Janet.

DELETE from owner
WHERE name = 'Janet';


---10	Show the names of the first three owners in your owners table.

SELECT * FROM owner LIMIT(3);


---11	Show the name of all owners whose name contains an a.

SELECT * FROM owner WHERE name LIKE '%a%';

---12	Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.

SELECT * FROM property
WHERE name!='Archstone'
AND id !=3 AND id !=5
ORDER BY name ASC;

---13	Show the highest age of all owners.

SELECT MAX(age) FROM owner;

---14	Show the highest age of owners who are under 30 and whose name contains an o. Limit to one result.

SELECT * FROM owner
WHERE age<30 AND name LIKE '%o%'
ORDER BY age DESC
LIMIT 1;

---15	Count the total number of properties where the owner_id is between 1 and 3.

SELECT * FROM property WHERE owner_id BETWEEN 1 AND 3;

--- Bonuses (if attempted)

---16.	List all properties sorted by the owners names

SELECT owner.name, property.name, property.owner_id FROM owner INNER JOIN property ON owner.id = property.owner_id ORDER BY owner.name ASC;

---17.	In the properties table change the name of the column "name" to "property_name".

ALTER TABLE property 
RENAME COLUMN name TO property_name;

---18.	Add a new property to the owner with an id of 3.

--- first, I added a new owner in the owner table under id 3:

INSERT INTO owner (id, name, age) VALUES (3,'Rebecca', 46);
 --- then, I added them to one of the properties:

apartments=# UPDATE property 
apartments-# SET owner_id = 3
apartments-# WHERE id = 12;



