--- Answers for Questions

--- 1.
SELECT * FROM owner;

--- 2. 
SELECT name FROM owner;

--- 3.
SELECT age FROM owner ORDER BY age ASC;

--- 4.
SELECT name FROM owner WHERE name='Donald';

--- 5.
SELECT age FROM owner WHERE age>30;

--- 6.
SELECT name FROM owner WHERE name LIKE 'E%';

--- 7.
UPDATE owner SET age=30 WHERE name='Jane';

--- 8.
UPDATE owner SET name='Janet' WHERE name='Jane';

--- 9.
-- ERROR:  23503: update or delete on table "owner" violates foreign key constraint "property_owner_id_fkey" on table "property"
-- DETAIL:  Key (id)=(3) is still referenced from table "property".
-- SCHEMA NAME:  public
-- TABLE NAME:  property
-- CONSTRAINT NAME:  property_owner_id_fkey
-- LOCATION:  ri_ReportViolation, ri_triggers.c:2865
-- Time: 1.897 ms

-- Change owner so we can delete
UPDATE property SET owner_id=4 WHERE owner_id=3;
DELETE FROM owner WHERE name='Janet';

--- 10.
SELECT name FROM owner ORDER BY id ASC LIMIT 3;

--- 11.
SELECT name FROM owner WHERE name LIKE '%a%';

--- 12.
SELECT * FROM property WHERE name!='Archstone' AND id!=3 AND id!=5 ORDER BY name ASC;

--- 13.
SELECT age FROM owner ORDER BY age DESC LIMIT 1;

--- 14.
SELECT age FROM owner WHERE age<30 AND name LIKE '%o%' ORDER BY age DESC LIMIT 1;

--- 15.
SELECT COUNT(*) FROM property WHERE owner_id>=1 AND owner_id<=3;


--- Bonuses (if attempted)

--- 16.
SELECT * FROM property INNER JOIN owner ON property.owner_id=owner.id ORDER BY owner.name ASC;

--- 17.
ALTER TABLE property RENAME COLUMN name TO property_name;

--- 18.
INSERT INTO owner (id, name, age) VALUES (3, 'Bobby', 50);
INSERT INTO property (property_name, units, owner_id) VALUES ('Mega Complex', 500, 3);