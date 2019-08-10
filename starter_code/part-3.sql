-- Answers for Questions

-- Show all the data in the owners table.
select * from owner;

-- Show the names of all owners.
select name from owner;

-- Show the ages of all of the owners in ascending order.
select age from owner order by age asc;

-- Show the name of an owner whose name is Donald.
select name from owner where name = 'Donald';

-- Show the age of all owners who are older than 30.
select name, age from owner where age > 30;

-- Show the name of all owners whose name starts with an E.
select name from owner where UPPER(name) like 'E%';

-- Change Jane's age to 30.
update owner set age = 30 where id = 3;

-- Change Jane's name to Janet.
update owner set name = 'Janet' where id = 3;

-- Delete the owner named Janet.
delete from owner where id = 3;

-- Show the names of the first three owners in your owners table.
select name from owner order by id limit 3;

-- Show the name of all owners whose name contains an a.
select name from owner where LOWER(name) like '%a%';

-- Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
select * from property where name != 'Archstone' and id not in (3,5) order by name asc;

-- Show the highest age of all owners.
select age from owner order by age desc limit 1;

-- Show the highest age of owners who are under 30 and whose name contains an o. Limit to one result.
select age from owner where age < 30 and LOWER(name) like '%o%' order by age desc limit 1;

-- Count the total number of properties where the owner_id is between 1 and 3.
select COUNT(properties) from property where owner_id >= 1 and owner_id <= 3;

-- Bonuses
-- These might require you to look up documentation online, or look at the next section in the notes.
-- List all properties sorted by the owners names
select * from property p full join owner o on p.owner_id = o.id order by o.name asc;

-- In the properties table change the name of the column "name" to "property_name".
alter table property rename column name to property_name;

-- Add a new property to the owner with an id of 3.
insert into property (property_name, units, owner_id) values ('Blue Mountain', 7, 3);


