-- 1. Show all the data in the owners table.
select * from owner;

-- 2. Show the names of all owners.
select name from owner;

-- 3. Show the ages of all of the owners in ascending order.
select age from owner asc;

-- 4. Show the name of an owner whose name is Donald.
select name from owner where name = 'Donald';

-- 5. Show the age of all owners who are older than 30.
select age from owner where age > 30;

-- 6. Show the name of all owners whose name starts with an E.
select * from owners where name like 'E%';

-- 7. Change Jane's age to 30.
update owner set age = 30 where name = 'Jane';

-- 8. Change Jane's name to Janet.
update owner set name = 'Janet' where name 'Jane';

-- 9. Delete the owner named Janet.
delete from owner where name = 'Janet';

-- 10. Show the names of the first three owners in your owners table.
select name from owner where id < 4;

-- 11. List all properties sorted by the owners names
select * from properties join owner on owner.id = properties.owner_id order by owner.name;

-- 12. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
select * from properties join owner on owner.id = properties.owner_id where properties.name != 'Archstone' order by properties;

-- 13. In the properties table change the name of the column "name" to "property_name".
// alter table properties rename name to property_name;

-- 14. Count the total number of properties where the owner_id is between 1 and 3.
select sum(units) from properties where owner_id between 1 and 3;

-- 15. Show the highest age of all owners.
select max(age) from owner;

-- 16. Show the name of all owners whose name starts with an E.
select name from owner where name like 'E%';
