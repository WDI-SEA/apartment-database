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
2. Show the names of all owners.
3. Show the ages of all of the owners in ascending order.
4. Show the name of an owner whose name is Donald.
5. Show the age of all owners who are older than 30.
6. Show the name of all owners whose name starts with an E.
7. Change Jane's age to 30.
8. Change Jane's name to Janet.
9. Delete the owner named Janet.
10. Show the names of the first three owners in your owners table.
11. Show the name of all owners whose name contains an `a`.
12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
13. Show the highest age of all owners.
14. Show the highest age of owners who are under 30 and whose name contains an `o`. Limit to one result.
15. Count the total number of properties where the owner_id is between 1 and 3.

### Bonuses 

These might require you to look up documentation online, or look at the next section in the notes.

16. List all properties sorted by the owners names 
17. In the properties table change the name of the column "name" to "property_name".
18. Add a new property to the owner with an id of 3.

<details>
  <summary>Need a hint for 16?</summary>
  Look up the JOIN keyword. This allows you to pull data from two different tables based on fields they have in common.
</details>

<details>
  <summary>Need a hint for 17?</summary>
  Look up documentation for ALTER TABLE. This allows you to change the schema (column name in this case).
</details>

<details>
  <summary>Need a hint for 18?</summary>
  Look up INSERT INTO. Don't forget that the foreign key, `owner_id` needs to exist as an id in the owner table!
</details>

---

## Licensing
1. All content is licensed under a CC-BY-NC-SA 4.0 license.
2. All software code is licensed under GNU GPLv3. For commercial use or alternative licensing, please contact legal@ga.co.
