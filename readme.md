# Apartment Database

- Create a database called `apartments`
- Using this database, create two tables, one for `owner`s and one for `property`s (table names shoud be lowercase and singular)
- Keep this relationship in mind when designing your schema:
  + **One owner can have many properties**

### Part 1: Create Tables

Place your answers in `part-1.sql`.

- The owners table should consist of:
  + `id` (this should be the primary key as well as a unique number that increments automatically)
  + `name` - name of owner
  + `age` - age of owner
- The properties table should consist of:
  + `id` (this should be the primary key as well as a unique number that increments automatically)
  + `name` - name of property
  + `units` - number of units
  + `owner_id` - reference to owner table
    + Remember to create a foreign key constraint that references the owners table

### Part 2: Insert Data

Place your answers in `part-2.sql`.

* Insert the following owners
    * Donald - age 29
    * John - age 33
    * Jane - age 43
    * Add 3 more people (you choose name / age)

* Insert the following properties (you can pick and choose the property owners)
    * Archstone - 20 units
    * Willowspring - 30 units
    * Add 3 more properties (you choose name / units)

### Part 3: Use Your Database

Write down the following sql statements that are required to solve the following tasks. Place your answers in `part-3.sql`.

1. Show all the data in the owners table.
SELECT * FROM owner;
id |  name  | age
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  3 | Jane   |  43
  4 | Josh   |  29
  5 | Millie |  32
  6 | Ross   |  27
2. Show the names of all owners.
  SELECT name FROM owner;
  name
--------
 Donald
 John
 Jane
 Josh
 Millie
 Ross
(6 rows)
3. Show the ages of all of the owners in ascending order.

SELECT age FROM owner ORDER BY age;
-----
  27
  29
  29
  32
  33
  43
(6 rows)
4. Show the name of an owner whose name is Donald.
SELECT name 'Don%';
--------
 Donald
(1 row)

5. Show the age of all owners who are older than 30.
SELECT age FROM owner WHERE age > 30;
-----
  33
  43
  32
(3 rows)
6. Show the name of all owners whose name starts with an E.
SELECT name FROM owner 'E%';
NONE

7. Change Jane's age to 30.
UPDATE owner SET age = 30 WHERE name = 'Jane';

8. Change Jane's name to Janet.
UPDATE owner SET name = 'Janet' WHERE id = 3;

9. Delete the owner named Janet.
DELETE FROM owner WHERE name = 'Janet';

10. Show the names of the first three owners in your owners table.
SELECT name FROM owner LIMIT 3;

11. List all properties sorted by the owners names
SELECT * FROM property INNER JOIN owner ON (property.id = owner.id);

12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.

### Bonuses (attempt at least 2)

These might require you to look up documentation online, or look at the next section in the notes.

13. In the properties table change the name of the column "name" to "property_name".
14. Count the total number of properties where the owner_id is between 1 and 3.
15. Show the highest age of all owners.
16. Show the name of all owners whose name starts with an E.


---

## Licensing
1. All content is licensed under a CC-BY-NC-SA 4.0 license.
2. All software code is licensed under GNU GPLv3. For commercial use or alternative licensing, please contact legal@ga.co.
