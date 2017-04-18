-- ### Part 2: Insert Data

-- Place your answers in `part-2.sql`.

-- * Insert the following owners
--     * Donald - age 29
--     * John - age 33
--     * Jane - age 43
--     * Add 3 more people (you choose name / age)

-- * Insert the following properties (you can pick and choose the property owners)
--     * Archstone - 20 units
--     * Willowspring - 30 units
--     * Add 3 more properties (you choose name / units)`

INSERT INTO owner 
(name, age)

VALUES
('Donald', 29), --     * Donald - age 29
('John', 33),--     * John - age 33
('Jane', 43),--     * Jane - age 43
('Christina', 30), --     * Add people (you choose name / age)
('Mikey', 28), --     * Add people (you choose name / age)
('Estela', 30);--     * Add people (you choose name / age)


--we are now inserting property data
INSERT INTO property 
(name, units, owner_id)

VALUES
('Archstone', 20, 1), --111 is the first (* Archstone - 20 units)property id--has to be unique number (can be any number)
('Willowspring', 30, 2), --     * Willowspring - 30 units
('Leaf', 40, 3),--     * Add property (you choose name / units)`
('Bark', 50, 4), --     * Willowspring - 30 units
('Tree', 60, 5);--     * Add property (you choose name / units)

-- apartments=# SELECT * FROM property;
--  id |     name     | units | owner_id 
-- ----+--------------+-------+----------
--   1 | Archstone    |    20 |        1
--   2 | Willowspring |    30 |        2
--   3 | Leaf         |    40 |        3
--   4 | Bark         |    50 |        4
--   5 | Tree         |    60 |        5
-- (5 rows)


