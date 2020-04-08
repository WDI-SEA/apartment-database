--- Answers for Questions

 1. SELECT * FROM owners;

 2. SELECT name FROM owners;

 3. SELECT age FROM owners ORDER BY age ASC;

 4. SELECT name FROM owners WHERE name = 'Donald';

 5. SELECT age FROM owners WHERE age > 30;

 6. SELECT name FROM owners WHERE name LIKE 'E%';

 7. UPDATE owners SET age = 30 WHERE name = 'Jane';

 8. UPDATE owners SET name = 'Janet' WHERE name = 'Jane';

 9. DELETE FROM owners WHERE name = 'Janet';

 ---ERROR:  update or delete on table "owners" violates foreign key constraint "properties_own
 ---er_id_fkey" on table "properties"
 ---DETAIL:  Key (id)=(3) is still referenced from table "properties".

10. SELECT name FROM owners WHERE id < 4;

11. SELECT name FROM owners WHERE name LIKE '%a%';

12. SELECT * FROM properties WHERE name != 'Archstone' AND id != 3 AND id != 5 ORDER BY name;

13. SELECT max(age) FROM owners;

14. SELECT max(age) FROM owners WHERE age < 30 AND name LIKE '%o%' LIMIT 1;

15. SELECT COUNT(*) FROM properties WHERE owner_id > 0 AND owner_id < 4;

16. SELECT owners.name, properties.name FROM properties RIGHT JOIN owners ON owners.id = properties.owner_id ORDER BY owners.name;

17. ALTER TABLE properties RENAME COLUMN name TO property_name;

18. INSERT INTO properties (property_name, units, owner_id) VALUES ('Tower 7', 52, 3);
---couldn't delete Janet earlier, so that worked in my favor here.

--- Bonuses (if attempted)
