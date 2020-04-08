SELECT * FROM owners;
select name from owners;
select name from owners order by name asc;
select * from owners where name like '%Donald%';
select * from owners where age > 30;
select * from owners where name like '%E%';
update owners set age = '30' where id = 3;
update owners set name = 'Janet' where id = 3;

select * from owners where id < 4;
select * from owners where name like '%a%';
select * from properties where name != 'Archstone' and id != 3 and id != 5 order by name asc;
select * from owners order by age desc;
select * from owners where age < 30 and name like '%o%';
select name from properties where owner_id < 4 and owner_id > 0;
--- Bonuses (if attempted)
