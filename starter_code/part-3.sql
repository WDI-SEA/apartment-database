--- Answers for Questions

--- 1.
SELECT * FROM owners;

--- 2. 
SELECT name FROM owners;
--- 3.
select * from owners ORDER BY age ASC;
--- 4.
select name from owners where name = 'Donald';
--- 5.
select * from owners where age >30;
--- 6.
select name from owners where name like 'E%';
--- 7.
UPDATE owners SET age=30 WHERE id = 3;
--- 8.
UPDATE owners SET name='Janet' WHERE id = 3;
--- 9.
Delete from owners where name = 'Janet';
--- 10.
select * from owners ORDER BY id LIMIT 3;
--- 11.
select * from owners where name like '%a%';
--- 12.
select * from properties where name not in ('Archstone') AND id not in (3,5);
--- 13.
select * from owners ORDER BY age desc limit 1;
--- 14. 
select * from owners where age <30 AND name like '%o%' order by age desc limit 1;
--- 15.
select * from properties where owner_id IN (1,2,3);
--- Bonuses (if attempted)
