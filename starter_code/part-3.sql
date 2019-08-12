--- Answers for Questions

--- 1.
SELECT * FROM owner;

--- 2. 
SELECT name FROM owner;

--- 3.
SELECT age FROM owner ORDER BY age;

--- 4.
SELECT name FROM owner WHERE name='Donald';

--- 5.
SELECT age FROM owner WHERE age > 30;

--- 6.
SELECT name FROM owner WHERE name LIKE 'E%';

--- 7.
UPDATE owner SET age=30 WHERE name='Jane';

--- 8.
UPDATE owner SET name='Janet' WHERE name='Jane';

--- 9.
DELETE FROM owner WHERE name='Janet';

--- 10.
SELECT name FROM owner ORDER BY id LIMIT 3;

--- 11.
SELECT name FROM owner WHERE LOWER(name) like '%a%';

--- 12.
SELECT * FROM property WHERE (name != 'Archstone' AND id != 3 AND id != 5) ORDER BY name;

--- 13.
SELECT MAX(age) FROM owner;

--- 14.
SELECT MAX(age) as "max age" FROM owner WHERE (age < 30 AND LOWER(name) LIKE '%o%') LIMIT 1;

--- 15.
SELECT COUNT(*) as firstThreeOwnerProperties FROM property WHERE (owner_id >= 1 AND owner_id <= 3);


--- Bonuses (if attempted)
--- 16.
SELECT property.name, owner.name FROM property LEFT JOIN owner ON property.owner_id = owner.id;

--- 17.
ALTER TABLE property RENAME COLUMN "name" TO "property_name";

--- 18.
INSERT INTO property (property_name, units, owner_id) VALUES ('Willows Vista', 80, 3);

