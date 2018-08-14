--- Answers for Questions

--- 1. SELECT * FROM owner;

--- 2. SELECT name FROM owner;

--- 3. SELECT age FROM owner ORDER BY age ASC;

--- 4. SELECT name FROM owner WHERE name='Donald';

--- 5. SELECT age FROM owner WHERE age > 30;

--- 6. SELECT name FROM owner WHERE name LIKE ('E%');

--- 7. UPDATE owner SET age = 30 WHERE name = 'Jane';

--- 8. UPDATE owner SET name = 'Janet' WHERE id=3;

--- 9. DELETE FROM owner WHERE id=3;

--- 10. SELECT name FROM owner LIMIT 3;

--- 11. SELECT name FROM owner WHERE name LIKE ('%a%');

--- 12. SELECT * FROM property WHERE name !='Archstone' AND id !=3 AND id !=5;

--- 13. SELECT * FROM owner ORDER BY age DESC LIMIT 1;

--- 14. SELECT age FROM owner WHERE age < 30 AND name LIKE ('%o%') ORDER BY age DESC LIMIT 1;

--- 15. SELECT COUNT (owner_id) WHERE owner_id < 4;


--- Bonuses (if attempted)

--- 17. ALTER TABLE property RENAME COLUMN name TO property_name;