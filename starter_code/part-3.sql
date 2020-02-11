--- Answers for Questions
1. SELECT * FROM owner;

2. SELECT name FROM owner;

3. SELECT * FROM owner ORDER BY age ASC;

4. SELECT name FROM owner WHERE name='Donald';

5. SELECT age FROM owner WHERE age > 30;

6. SELECT * FROM owner WHERE name LIKE '%E%';

7.  UPDATE owner SET age=30 WHERE name='Jane';

8. UPDATE owner SET name='Janet' WHERE name='Jane';

9. DELETE FROM owner WHERE name='Janet';

10.SELECT name FROM owner LIMIT 3;

11.Select * FROM owner WHERE name Like '%a%';

12. SELECT * FROM property WHERE name <> 'Archstone' AND id NOT IN (3,5) ORDER BY name ASC;
--meh-- 

13. SELECT * FROM owner ORDER BY age DESC LIMIT 1;

14. SELECT * FROM owner WHERE age < 30 AND name LIKE '%o%' LIMIT 1;

15. SELECT COUNT (owner_id) AS COUNT_OF_OWNER_IDs FROM property WHERE owner_id BETWEEN 1 AND 3;
--NGL i totally googled this answer--
--- 1.

--- 2. 

--- etc...

--- Bonuses (if attempted)
