--- Answers for Questions

1. apartments=# SELECT * FROM owner;

2. SELECT name FROM owner;

3. SELECT age FROM owner ORDER BY age ASC;

4. SELECT name FROM owner WHERE name='Donald';

5. SELECT name FROM owner WHERE age>30;

6. SELECT name FROM owner WHERE name LIKE 'E%';

7. UPDATE owner SET age=30 WHERE name='Jane';

8. UPDATE owner SET name='Janet' WHERE name='Jane';

9. DELETE FROM property where id=(SELECT id FROM owner WHERE name='Janet');

10. SELECT * FROM owner LIMIT 3;

11. SELECT name FROM owner WHERE name LIKE '%a%';

12. SELECT * FROM peropety WHERE name !='Archstone' AND id NOT IN (3,5);

13. SELECT MAX(age) FROM owner;

14. SELECT MAX(age) FROM owner WHERE age < 30;

15. SELECT COUNT(unit) FROM property WHERE owner_id BETWEEN 1 AND 3;

--- Bonuses (if attempted)

16. SELECT * FROM property ORDER BY owner_id;

17. ALTER TABLE property RENAME COLUMN name TO property_name;

18. INSERT INTO property (property_name, units, owner_id) VALUES ('Boulders', 60, 3);
