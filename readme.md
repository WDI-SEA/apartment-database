# Apartment lab

- Create a database called `apartmentlab`
- Using this database, create two tables, one for owners and one for properties
- Keep this relationship in mind when designing your schema:
  + **One owner can have many properties**

###Part 1: Create Tables

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

###Part 2: Insert Data

* Insert the following owners
    * Donald - age 29
    * John - age 33
    * Jane - age 43
    * Add 3 more people (you choose name / age)

* Insert the following properties (you can pick and choose the property owners)
    * Archstone - 20 units
    * Willowspring - 30 units
    * Add 3 more properties (you choose name / units)

###Part 3: Use Your Database


Write down the following sql statements that are required to solve the following tasks.


1. Show all the tables.
* Show all the data in the owners table.
* Show the names of all owners.
* Show the ages of all of the owners in ascending order.
* Show the name of an owner whose name is Donald.
* Show the age of all owners who are older than 30.
* Show the name of all owners whose name starts with an E.
* Change Jane's age to 30.
* Change Jane's name to Janet.
* Delete the owner named Janet.
* Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
* Show the highest age of all owners.
* Show the names of the first three owners in your owners table.


###Bonus

These might require you to look up documentation online


1. In the properties table change the name of the column "name" to "property_name".
* Count the total number of properties where the owner_id is between 1 and 3.
* List all properties sorted by the owners names


