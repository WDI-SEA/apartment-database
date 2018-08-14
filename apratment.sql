#1-Show all the data in the owners table.
SELECT * FROM owner;

#2-Show the names of all owners.
SELECT name FROM owner;

#3-Show the ages of all of the owners in ascending order.
SELECT name FROM owner ORDER BY age;

#4-Show the name of an owner whose name is Donald.
SELECT name FROM owner WHERE name='Donald';

#5-Show the age of all owners who are older than 30.
SELECT age FROM owner WHERE age>30
-John, Jane, Yuki, Siobhan

#6-Show the name of all owners whose name starts with an E.
SELECT name FROM owner WHERE name LIKE 'E%';
-Erin

#7-Change Jane's age to 30.
UPDATE owner SET age=30 WHERE name='Jane';

#8-Change Jane's name to Janet.
UPDATE owner SET name='Janet' WHERE name='Jane';

#9-Delete the owner named Janet.
DELETE FROM owner WHERE name ='Janet';

#10-Show the names of the first three owners in your owners table.
SELECT name FROM owner LIMIT 3;
-Donald, John, Yuki

#11-Show the name of all owners whose name contains an a.
SELECT name FROM owner WHERE name LIKE '%a%';
-Donald,Siobhan,James,Drake

#12-Show all of the properties in alphabetical order that are not named 
Archstone and do not have an id of 3 or 5.
SELECT name from property WHERE name!='Archstone' AND owner_id NOT IN(3,5) ORDER BY name;
-Brookvista, Fair Creek, Goldendale, Green Heaven, Green Lake Pointe,
Mill Creek, Parkview Pointe, Ridgefield Bay, West Village, Willowspring,

#13-Show the highest age of all owners.
SELECT age FROM owner ORDER BY age DESC LIMIT 1;
-67

#14-Show the highest age of owners who are under 30 and whose name contains an o. Limit to one result.
SELECT age FROM owner WHERE age<30 AND name LIKE '%o%' ORDER BY age DESC LIMIT 1;
-29
#15-Count the total number of properties where the owner_id is between 1 and 3.
 SELECT COUNT(*) AS count FROM property WHERE  owner_id BETWEEN 1 AND 3;
 -3

#16-List all properties sorted by the owners names
SELECT p.name FROM owner o, property p WHERE o.id=p.owner_id ORDER BY o.name;
#17-In the properties table change the name of the column "name" to "property_name".
ALTER TABLE property RENAME name TO property_name;
#18- Add a new property to the owner with an id of 3.
INSERT INTO property (name, units, owner_id) VALUES ('West Side' , 31,3);
