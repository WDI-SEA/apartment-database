\connect apartments;
--- Answers for Questions

--- 1.
select * from owners;
--- 2. 
select name from owners;
-- 3.
select age from owners order by age asc;
-- 4.
select name from owners where name = 'Donald';
-- 5.
select age from owners where age > 30;
-- 6.
select name from owners where name like 'E%';
-- 7.
update owners set age = 30 where name = 'Jane';
-- 8.
update owners set name = 'Janet' where name = 'Jane';
-- 9.
delete from owners where name = 'Janet';
-- 10.
select name from owners order by id limit 3;
-- 11.
select name from owners where name like '%a%';
-- 12.
select * from properties where properties.name not in ('Archstone') and properties.id not in (3, 5) order by name asc;
-- 13.
select max(age) from owners;
-- 14.
select max(age) from owners where age < 30 and name like '%o%' limit 1;
-- 15.
select count(*) from properties join owners on properties.owner_id = owners.id where owners.id between 1 and 3;
--- etc...

--- Bonuses (if attempted)
-- 16.
select * from properties join owners on properties.owner_id = owners.id order by owners.name;
-- 17.
alter table properties rename column name to property_name;
-- 18.
insert into properties (name, units, owner_id) values ('Drafting Doors', 10, 3);