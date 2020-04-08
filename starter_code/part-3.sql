--- Answers for Questions

1. SELECT * FROM owners;

2. SELECT name FROM owners;

3. SELECT age FROM owners ORDER BY age ASC;

4. SELECT * FROM owners WHERE name = 'Donald';

5. SELECT * FROM owners WHERE age >= 30;

6. SELECT * FROM owners WHERE name LIKE 'E%';

7. UPDATE owners SET age = '30' WHERE name = 'Jane';

8. UPDATE owners SET name = 'Janet' WHERE name = 'Jane';

9. Dont know if you want us to delete the properties associated with
her owner_id key or not, but it would be | DELETE FROM owners WHERE name = 'Janet';
assuming it wasnt associated with a property.

10. SELECT * FROM owners WHERE id <= 3;

11. SELECT * FROM owners WHERE name LIKE '%a%';

12. SELECT * FROM properties WHERE name != 'Archstone' AND id != '3' AND id != '5' ORDER BY name ASC;

13. SELECT MAX(age) FROM owners;

14. SELECT * FROM owners WHERE age < 30 AND name LIKE '%o%' LIMIT 1;

15. SELECT COUNT(owner_id) FROM properties WHERE owner_id <= 3;
