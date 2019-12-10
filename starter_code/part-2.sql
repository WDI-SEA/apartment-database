-- Insert Data

-- * Insert the following owners
--     * Donald - age 29
--     * John - age 33
--     * Jane - age 43
--     * Yuki - Age 67
--     * Erin - Age 21
--     * Siobhan - Age 55
--     * Add 3 more people (you choose name / age)

\connect apartments

INSERT INTO owner (name, age) VALUES('Donald', 29);
INSERT INTO owner (name, age) VALUES('John', 33);
INSERT INTO owner (name, age) VALUES('Jane', 43);
INSERT INTO owner (name, age) VALUES('Yuki', 67);
INSERT INTO owner (name, age) VALUES('Erin', 21);
INSERT INTO owner (name, age) VALUES('Siobhan', 55);
INSERT INTO owner (name, age) VALUES('Margaret', 99);
INSERT INTO owner (name, age) VALUES('Corinne', 28);
INSERT INTO owner (name, age) VALUES('David', 31);

SELECT * FROM owner;
-- SELECT name, age from owner;
-- SELECT 'gibberish' as myfield, age from owner;

-- * Insert the following properties (you can pick and choose the property owners)
--     * Archstone - 20 units
--     * Zenith Hills - 10 units
--     * Willowspring - 30 units
--     * Ridgefield Bay - 5 units
--     * Brookvista - 20 units
--     * Goldendale - 15 units
--     * Green Haven - 40 units
--     * Fair Creek - 35 units
--     * Parkview Pointe - 50 units
--     * Royal Gardens Court - 45 units
--     * Add 3 more properties (you choose name / units)

-- INSERT INTO property (name, units, owner_id) VALUES('Archstone', 20, 4);
-- INSERT INTO property (name, units, owner_id) VALUES('Zenith Hills', 10, 2);
-- INSERT INTO property (name, units, owner_id) VALUES('Willowspring'), VALUES(30, select id from owner order by rand() limit 1;
INSERT INTO property (name, units, owner_id) SELECT 'Archstone' as name, 20 as units, id from owner order by RANDOM() limit 1;
INSERT INTO property (name, units, owner_id) SELECT 'Zenith Hills' AS name, 20 AS units, id FROM owner ORDER BY RANDOM() LIMIT 1;
INSERT INTO property (name, units, owner_id) SELECT 'Willowspring' AS name, 30 AS units, id FROM owner ORDER BY RANDOM() LIMIT 1;
INSERT INTO property (name, units, owner_id) SELECT 'Ridgefield Bay' AS name, 5 AS units, id FROM owner ORDER BY RANDOM() LIMIT 1;
INSERT INTO property (name, units, owner_id) SELECT 'Brookvista' AS name, 20 AS units, id FROM owner ORDER BY RANDOM() LIMIT 1;
INSERT INTO property (name, units, owner_id) SELECT 'Goldendale' AS name, 15 AS units, id FROM owner ORDER BY RANDOM() LIMIT 1;
INSERT INTO property (name, units, owner_id) SELECT 'Green Haven' AS name, 40 AS units, id FROM owner ORDER BY RANDOM() LIMIT 1;
INSERT INTO property (name, units, owner_id) SELECT 'Fair Creek' AS name, 35 AS units, id FROM owner ORDER BY RANDOM() LIMIT 1;
INSERT INTO property (name, units, owner_id) SELECT 'Parkview Points' AS name, 50 AS units, id FROM owner ORDER BY RANDOM() LIMIT 1;
INSERT INTO property (name, units, owner_id) SELECT 'Royal Gardens Court' AS name, 45 AS units, id FROM owner ORDER BY RANDOM() LIMIT 1;
INSERT INTO property (name, units, owner_id) SELECT 'Hudson Crossing' AS name, 12 AS units, id FROM owner ORDER BY RANDOM() LIMIT 1;
INSERT INTO property (name, units, owner_id) SELECT 'The Corona' AS name, 6 AS units, id FROM owner ORDER BY RANDOM() LIMIT 1;
INSERT INTO property (name, units, owner_id) SELECT 'Washington Irving' AS name, 30 AS units, id FROM owner ORDER BY RANDOM() LIMIT 1;

SELECT * FROM property;
