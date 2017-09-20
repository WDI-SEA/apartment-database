part-3.sql

SELECT * FROM owners;
SELECT name FROM owners;
SELECT * FROM owners ORDER BY age ASC;
SELECT * FROM owners WHERE name = 'Donald';
SELECT * FROM owners WHERE age > 30;
SELECT * FROM owners WHERE name = 'E%';
UPDATE owners SET age = 30 WHERE name = 'Jane';
UPDATE owners SET name = 'Janet' WHERE id = 4;
DELETE FROM owners WHERE name = 'Janet';
SELECT * FROM owners WHERE id < 4;
SELECT * FROM properties ORDER BY owner_id;
SELECT * FROM properties WHERE name != 'Archstone' AND id != 3 AND id != 5;

BONUSES:
ALTER TABLE properties RENAME COLUMN name TO property_name;
SELECT * FROM properties WHERE owner_id > 1 AND owner_id < 3;
