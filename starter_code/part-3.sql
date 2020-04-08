--- Answers for Questions

    1. SELECT * FROM owners:
    2. SELECT name FROM owners;
    3. SELECT age FROM owners ORDER BY age;
    4. SELECT name FROM owners WHERE name = 'Donald';
    5. SELECT name, age FROM owners WHERE age > 30;
    6. SELECT * FROM owners WHERE age LIKE 'E%';
    7. UPDATE owners SET age = 30 WHERE name = 'Jane';
    8. UPDATE owners SET name = 'Janet'  WHERE name = 'Jane';
    9. DELETE FROM owners WHERE name = 'Janet';
    10. SELECT name FROM owners WHERE id < 3;
    11. SELECT name FROM owners WHERE name LIKE '%a%';
    12. 
    13. SELECT MAX(age) FROM owners;
    14. SELECT MAX(age) FROM owners WHERE age < 30 and name LIKE '%O%';
    15. SELECT * FROM properties WHERE id BETWEEN 1 AND 3;

--- Bonuses (if attempted)
