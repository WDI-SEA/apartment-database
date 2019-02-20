--- 1.
SELECT * FROM owners;

--- 2. 
SELECT name FROM owners;

--- 3.
SELECT age FROM owners ORDER BY age ASC;

--- 4.
SELECT name FROM owners WHERE name = 'Donald';

--- 5.
SELECT age FROM owners WHERE age > '30';

--- 6.
SELECT name FROM owners WHERE name LIKE 'E%';

--- 7.
UPDATE owners SET age='30' WHERE name='Jane';

--- 8.
UPDATE owners SET name='Janet' WHERE name='Jane';

--- 9.
DELETE FROM owners WHERE name ='Janet';
-- Will throw error
-- ERROR:  update or delete on table "owners" violates foreign key constraint "properties_owner_id_fkey" on table "properties"
-- DETAIL:  Key (id)=(3) is still referenced from table "properties"

--- 10.
SELECT name FROM owners LIMIT 3;

--- 11.
SELECT name FROM owners WHERE name LIKE '%a%';

--- 12.
SELECT name FROM properties WHERE name != 'Archstone' AND id != '3' AND id != '5' ORDER BY name;

--- 13.
SELECT MAX(age) FROM owners;

--- 14.
SELECT MAX(age) FROM owners WHERE age < 30 AND name LIKE '%o%' LIMIT 1;

--- 15.
SELECT COUNT(*) FROM properties WHERE owner_id > 1 AND owner_id < 3;

--- 16.
SELECT properties.* FROM properties
JOIN owners ON owners.id = properties.owner_id
ORDER BY owners.name;

--- 17.
ALTER TABLE properties RENAME COLUMN name TO property_name;

--- 18.
INSERT INTO properties (property_name, units, owner_id) VALUES ('Blue Island', '30','3');
