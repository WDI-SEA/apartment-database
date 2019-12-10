\connect apartments;``

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

INSERT INTO property (name, units, owner_id) SELECT 'Archstone' AS name, 20 AS units, id FROM owner ORDER BY RANDOM() LIMIT 1;
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