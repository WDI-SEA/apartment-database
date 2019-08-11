-- Insert Data

CREATE TABLE properties (
apartments(# id SERIAL PRIMARY KEY,
apartments(# name VARCHAR(32),
apartments(# units INT,
apartments(# owner_id INT);
CREATE TABLE
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES('Donald', 29);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES('John', 33);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES('Jane', 43);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES('Yuki', 67);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES('Erin', 21);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES('Siobhan', 55);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES('Jessica', 24);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES('Luke', 39);
INSERT 0 1
apartments=# INSERT INTO owners (name, age)
apartments-# VALUES('Matt', 32);
INSERT 0 1
apartments=# select * from owners
apartments-# ;
 id |  name   | age 
----+---------+-----
  1 | Donald  |  29
  2 | John    |  33
  3 | Jane    |  43
  4 | Yuki    |  67
  5 | Erin    |  21
  6 | Siobhan |  55
  7 | Jessica |  24
  8 | Luke    |  39
  9 | Matt    |  32
(9 rows)

apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Archstone', 20, 1);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Zenith Hills', 10, 2);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Willowspring', 30, 3);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Ridgefield Bay', 5, 4);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Brookvista', 20, 5);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Goldendale', 15, 6);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Green Haven', 40, 7);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Fair Creek', 35, 8);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Parkview Pointe', 50, 9);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Royal Gardens Court', 45, 1);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Park Place', 40, 2);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Crest Pointe', 20, 3);
INSERT 0 1
apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Gregory Heights', 25, 4);