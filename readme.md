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
// select * from owner;
2. Show the names of all owners.
// select name from owner;
3. Show the ages of all of the owners in ascending order.
// select age from owner asc;
4. Show the name of an owner whose name is Donald.
// select name from owner where name = 'Donald';
5. Show the age of all owners who are older than 30.
// select age from owner where age > 30;
6. Show the name of all owners whose name starts with an E. 
// select * from owners where name like 'E%';
7. Change Jane's age to 30.
// update owner set age = 30 where name = 'Jane';
8. Change Jane's name to Janet.
// update owner set name = 'Janet' where name 'Jane';
9. Delete the owner named Janet.
// delete from owner where name = 'Janet';
10. Show the names of the first three owners in your owners table.
// select name from owner where id < 4;
11. List all properties sorted by the owners names
// select * from properties join owner on owner.id = properties.owner_id order by owner.name;
12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
// select * from properties join owner on owner.id = properties.owner_id where properties.name != 'Archstone' order by properties;

### Bonuses (attempt at least 2)

These might require you to look up documentation online, or look at the next section in the notes.

13. In the properties table change the name of the column "name" to "property_name".
// alter table properties rename name to property_name;
14. Count the total number of properties where the owner_id is between 1 and 3.
// select sum(units) from properties where owner_id between 1 and 3;
15. Show the highest age of all owners.
// select max(age) from owner;
16. Show the name of all owners whose name starts with an E.
// select name from owner where name like 'E%';


---

## Licensing
1. All content is licensed under a CC-BY-NC-SA 4.0 license.
2. All software code is licensed under GNU GPLv3. For commercial use or alternative licensing, please contact legal@ga.co.
