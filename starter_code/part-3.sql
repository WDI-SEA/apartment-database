--- Answers for Questions

  1. SELECT * FROM owner
  2. SELECT name FROM owner;
  3. SELECT age FROM owner ORDER BY age ASC;
  4. SELECT * FROM owner WHERE name='Donald';
  5. SELECT age FROM owner WHERE age>30;
  6. SELECT * FROM owner WHERE name LIKE 'E%';
  7. UPDATE owner SET age=30 WHERE name='Jane';
  8. UPDATE owner SET name='Janet' WHERE name='Jane';
  9. DELETE FROM owner WHERE name='Janet';
  10. SELECT name FROM owner LIMIT 3;
  11. SELECT * FROM owner WHERE name LIKE '%a%';
  12. SELECT * FROM property WHERE NOT name='Archstone' AND id<>3 AND id<>5 ORDER BY name;
  13. SELECT age FROM owner ORDER BY age DESC LIMIT 1;
  14. SELECT age FROM owner WHERE age<30 AND name LIKE '%o%' LIMIT 1;
  15. SELECT COUNT(property.units) FROM property WHERE owner_id BETWEEN 1 AND 3;
  16. SELECT * FROM property ORDER BY owner_id;
  18. INSERT INTO property (property_name, units, owner_id) VALUES ('Blue Waters', 25, 3);

--- Bonuses (if attempted)
