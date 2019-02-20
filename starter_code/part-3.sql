--- Answers for Questions

--- 1.
select*from owners;
--- 2. 
select name from owners;
--- 3.
select age from owners order by age;
--- 4.
select name from owners where name='Donald';
--- 5.
select age from owners where age > 30;
--- 6.
select name from owners where name like 'E%';
--- 7.
update owners set age='30' where name='Jane';
--- 8.
update owners set name='Janet' where name='Jane';
--- 9.
delete from owners where name='Janet';
--- 10.
select name from owners limit 3;
--- 11.
select name from owners where name like '%a%';
--- 12.
select*from properties where name not in ('Archstone') and id < 3 or id=4 or id > 5 order by name;
--- 13.
select age from owners order by age desc limit 1;
select max(age) from owners;
--- 14.
select max(age) from owners where age < 30 and name like '%o%' limit 1;
--- 15.
select count(owner_id) from properties where owner_id > 1 and owner_id < 3;
--- Bonuses (if attempted)
