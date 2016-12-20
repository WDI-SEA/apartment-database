CREATE TABLE owners (
	id SERIAL PRIMARY KEY,
	name TEXT,
	age INTEGER );

INSERT INTO owners (name, age) VALUES ('Donald',29);
INSERT INTO owners (name, age) VALUES ('John',33);
INSERT INTO owners (name, age) VALUES ('Jane',43);
INSERT INTO owners (name, age) VALUES ('Bob',31);
INSERT INTO owners (name, age) VALUES ('Tom',21);
INSERT INTO owners (name, age) VALUES ('Sam',18);


CREATE TABLE properties (
	id SERIAL PRIMARY KEY,
	name TEXT,
	units INTEGER,
	owner_id INTEGER);

INSERT INTO properties (name, units, owner_id) VALUES ('Archstone', 20, 1);
INSERT INTO properties (name, units, owner_id) VALUES ('Willowsprin', 30, 2);
INSERT INTO properties (name, units, owner_id) VALUES ('Washer/dryer', 15, 3);
INSERT INTO properties (name, units, owner_id) VALUES ('Parking',50, 4);
INSERT INTO properties (name, units, owner_id) VALUES ('Pet',10, 5);



# part3:
# 1. Show all the data in the owners table.
SELECT * FROM owners;
# 2. Show the names of all owners.
SELECT name FROM owners;
# 3. Show the ages of all of the owners in ascending order.
SELECT * FROM owners ORDER BY age;
# 4. Show the name of an owner whose name is Donald.
SELECT * FROM owners WHERE name = 'Donald';
# 5. Show the age of all owners who are older than 30.
SELECT * FROM owners WHERE age > 30;
# 6. Show the name of all owners whose name starts with an E.
SELECT * FROM owners WHERE name LIKE 'E%';
# 7. Change Jane's age to 30.
 UPDATE owners SET age = 30 WHERE name = 'Jane';
# 8. Change Jane's name to Janet.
UPDATE owners SET name = 'Janet'  WHERE name = 'Jane';
# 9. Delete the owner named Janet.
DELETE FROM owners WHERE name = 'Janet';
# 10.Show the names of the first three owners in your owners table.
SELECT name FROM owners LIMIT 3;

# bonuses
# 1. In the properties table change the name of the column "name" to "property_name".
ALTER TABLE properties RENAME COLUMN name TO property_name;
# 2. Count the total number of properties where the owner_id is between 1 and 3.
SELECT COUNT(*) FROM properties WHERE owner_id BETWEEN 1 AND 3;
# 3. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
SELECT * FROM properties WHERE property_name <> 'Archstone' AND id <> '3' AND id <> '5' ORDER BY property_name ASC;
# 4. Show the highest age of all owners.
SELECT MAX(age) FROM owners;
# 5. Show the name of all owners whose name starts with an E.
SELECT * FROM owners WHERE name LIKE 'E%';
# 6. List all properties sorted by the owners names
SELECT * FROM properties INNER JOIN owners ON properties.owner_id = owners.id ORDER BY owners.name;