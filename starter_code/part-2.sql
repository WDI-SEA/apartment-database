-- Insert Data

apartments=# INSERT INTO owners (name, age) VALUES ('Donald', 29);
INSERT 0 1
apartments=# 
apartments=# INSERT INTO owners (name, age) VALUES ('John', 33);
INSERT 0 1
apartments=# INSERT INTO owners (name, age) VALUES ('Jane', 43);
INSERT 0 1
apartments=# INSERT INTO owners (name, age) VALUES ('Yuki', 67);
INSERT 0 1
apartments=# INSERT INTO owners (name, age) VALUES ('Erin', 21);
INSERT 0 1
apartments=# INSERT INTO owners (name, age) VALUES ('Siobhan', 55);
INSERT 0 1
apartments=# INSERT INTO owners (name, age) VALUES ('Lola', 30);
INSERT 0 1
apartments=# INSERT INTO owners (name, age) VALUES ('Rasputin', 340);
INSERT 0 1
apartments=# INSERT INTO owners (name, age) VALUES ('Syd', 78);
INSERT 0 1
apartments=# SELECT * FROM owners;

apartments=# INSERT INTO properties (name, units) VALUES ('Archstone', 20);
INSERT 0 1
apartments=# INSERT INTO properties (name, units) VALUES ('Zenith Hills', 10);
INSERT 0 1
apartments=# INSERT INTO properties (name, units) VALUES ('Willowspring', 30);
INSERT 0 1
apartments=# INSERT INTO properties (name, units) VALUES ('Ridgefield Bay', 5);
INSERT 0 1
apartments=# INSERT INTO properties (name, units) VALUES ('Brookvista', 20);
INSERT 0 1
apartments=# INSERT INTO properties (name, units) VALUES ('Goldendale', 15);
INSERT 0 1
apartments=# INSERT INTO properties (name, units) VALUES ('Green Haven', 40);
INSERT 0 1
apartments=# INSERT INTO properties (name, units) VALUES ('Fair Creek', 35);
INSERT 0 1
apartments=# INSERT INTO properties (name, units) VALUES ('Parkview Pointe', 50);
INSERT 0 1
apartments=# INSERT INTO properties (name, units) VALUES ('Royal Gardens Court', 45);
INSERT 0 1
apartments=# INSERT INTO properties (name, units) VALUES ('Sudden Valley', 10);
INSERT 0 1
apartments=# INSERT INTO properties (name, units) VALUES ('Bohemian Grove', 2);
INSERT 0 1
apartments=# INSERT INTO properties (name, units) VALUES ('Zarthus', 90);
INSERT 0 1

--UPDATE PROPERTIES TO INCLUDE OWNER ID'S--

apartments=# UPDATE properties SET owner_id= 4 WHERE name = 'Zenith Hills';
UPDATE 1
apartments=# UPDATE properties SET owner_id= 4 WHERE name = 'Willowspring';
UPDATE 1
apartments=# UPDATE properties SET owner_id= 4 WHERE name = 'Ridgefield Bay';
UPDATE 1
apartments=# UPDATE properties SET owner_id= 2 WHERE name = 'Brookvista';
apartments=# UPDATE properties SET owner_id= 4 WHERE name = 'Goldendale';
UPDATE 1
apartments=# UPDATE properties SET owner_id= 2 WHERE name = 'Green Haven';
UPDATE 1
apartments=# UPDATE properties SET owner_id= 6 WHERE name = 'Fair Creek';
UPDATE 1
apartments=# UPDATE properties SET owner_id= 7 WHERE name = 'Parkview Pointe';
UPDATE 1
apartments=# UPDATE properties SET owner_id= 9 WHERE name = 'Royal Gardens Court';
UPDATE 1
apartments=# UPDATE properties SET owner_id= 8 WHERE name = 'Sudden Valley';
UPDATE 1
apartments=# UPDATE properties SET owner_id= 5 WHERE name = 'Bohemian Grove';
UPDATE 1
apartments=# UPDATE properties SET owner_id= 1 WHERE name = 'Zarthus';
UPDATE 1
