--- Answers for Questions

--- 1.
    SELECT * FROM owner;
--- 2. 
    SELECT name FROM owner;
--- 3.
    SELECT age FROM owner ORDER BY age ASC;
--- 4.
    SELECT name, age FROM owner WHERE name = 'Donald';
--- 5.
    SELECT name, age FROM owner WHERE age > '30';
--- 6.
    SELECT name FROM owner WHERE name LIKE 'E%';
--- 7.
    UPDATE owner SET age=30 WHERE name = 'Jane';
--- 8.
    UPDATE owner SET name='Janet' WHERE name = 'Jane';
--- 9.
    DELETE FROM property WHERE owner_id='3';
    DELETE FROM owner WHERE name='Janet';
--- 10.
    SELECT name FROM owner LIMIT 3;
--- 11.
    SELECT name FROM owner WHERE name LIKE '%a%';
--- 12.
    SELECT * FROM property WHERE NOT name = 'Archstone' AND id NOT IN ('3','5');
--- 13.
    SELECT MAX(age) FROM owner;
--- 14.
    SELECT MAX(age) FROM owner WHERE name LIKE '%o%' AND age < '30';
--- 15.
    SELECT * FROM property WHERE owner_id <= 3 AND owner_id >= 1;
--- Bonuses (if attempted)
--- 16.
    SELECT owner.id, property.name, owner.name                                                        
    FROM property 
    FULL JOIN owner ON owner.id = property.owner_id ORDER BY owner.name;
--- 17.
    ALTER TABLE property RENAME name TO property_name;
--- 18.
    INSERT INTO property                                                                                                                                                    
    (property_name, units, owner_id)                                                                                                                                                    
    VALUES                                                                                                                                                                               
    ('Bens Palace', '1', '3');
