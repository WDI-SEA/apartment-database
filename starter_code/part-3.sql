--- Answers for Questions

--- 1. apartments=# SELECT * FROM owners;    

--- 2. apartments=# SELECT name FROM owners;

--- 3. apartments=# SELECT * FROM owners ORDER BY age ASC;

--- 4. apartments=# SELECT * FROM owners WHERE name = 'Donald';

--- 5. apartments=# SELECT * FROM owners WHERE age > 30;

--- 6. apartments=# SELECT * FROM owners WHERE name LIKE 'E%';

--- 7. apartments=# UPDATE owners SET age = 30 WHERE id = 3;

--- 8. apartments=# UPDATE owners SET name = 'Janet' WHERE id = 3;

--- 9. apartments=# DELETE FROM owners WHERE name = 'Janet';
ERROR:  update or delete on table "owners" violates foreign key constraint "properties_owner_id_fkey" on table "properties"
DETAIL:  Key (id)=(3) is still referenced from table "properties".

--- 10. apartments=# apartments=# SELECT * FROM owners LIMIT 3;

--- 11. apartments=# SELECT * FROM owners WHERE name LIKE '%a%';

--- 12. apartments=# SELECT * FROM properties WHERE name NOT IN ('Archstone') AND id NOT IN (3, 5) ORDER BY name ASC;

--- 13. apartments=# SELECT max(age) FROM owners;

--- 14. apartments=# SELECT max(age) FROM owners WHERE name LIKE '%o%' AND age < 30 LIMIT 1;

--- 15. apartments=# SELECT COUNT(id) FROM properties WHERE owner_id < 4 AND owner_id > 0;

--- Bonuses (if attempted)
