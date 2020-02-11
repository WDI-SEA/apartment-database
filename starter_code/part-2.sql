-- Insert Data
INSERT INTO owners (name, age) VALUES('Donald', 29);
INSERT INTO owners (name, age) VALUES('John', 33);
INSERT INTO owners (name, age) VALUES('Jane', 43);
INSERT INTO owners (name, age) VALUES('Yuki', 67);
INSERT INTO owners (name, age) VALUES('Erin', 21);
INSERT INTO owners (name, age) VALUES('Siobhan', 55);
INSERT INTO owners (name, age) VALUES('Danaerys', 29);
INSERT INTO owners (name, age) VALUES('Cersei', 32);
INSERT INTO owners (name, age) VALUES('Sansa', 28);

INSERT INTO properties (name, units, owner_id) VALUES('Archstone', 20, 1);
INSERT INTO properties (name, units, owner_id) VALUES('Zenith Hills', 10, 2);
INSERT INTO properties (name, units, owner_id) VALUES('Willowspring', 30, 3);
INSERT INTO properties (name, units, owner_id) VALUES('Ridgefield Bay', 5, 4);
INSERT INTO properties (name, units, owner_id) VALUES('Brookvista', 20, 5);
INSERT INTO properties (name, units, owner_id) VALUES('Goldendale', 15, 6);
INSERT INTO properties (name, units, owner_id) VALUES('Green Haven', 40, 7);
INSERT INTO properties (name, units, owner_id) VALUES('Fair Creek', 35, 8);
INSERT INTO properties (name, units, owner_id) VALUES('Parkview Pointe', 50, 9);
INSERT INTO properties (name, units, owner_id) VALUES('Royal Gardens Court', 45, 9);
INSERT INTO properties (name, units, owner_id) VALUES('Meereen', 40, 10);
INSERT INTO properties (name, units, owner_id) VALUES('Kings Landing', 45, 11);
INSERT INTO properties (name, units, owner_id) VALUES('Wintefell', 50, 12);

apartments=# SELECT * FROM owners
apartments-# ;
 id |   name    | age 
----+-----------+-----
  1 | Donald    |  29
  2 | John      |  33
  3 | Jane      |  43
  4 | Yuki      |  67
  5 | Erin      |  21
  6 | Siobhan   |  55
  7 | Danaerys  |  29
  8 | Cersei    |  32
  9 | Sansa     |  28
(9 rows)

apartments=# SELECT * FROM properties;
 id |        name         | units | owner_id 
----+---------------------+-------+----------
  1 | Archstone           |    20 | 7
  2 | Zenith Hills        |    10 | 7
  3 | Willowspring        |    30 | 7
  4 | Ridgefield Bay      |     5 | 7
  5 | Brookvista          |    20 | 7
  6 | Goldendale          |    15 | 7
  7 | Green Haven         |    40 | 7
  8 | Fair Creek          |    35 | 7
  9 | Parkview Pointe     |    50 | 7
 10 | Royal Gardens Court |    45 | 7
 11 | Mereen              |    40 | 7
 12 | Kings Landing       |    45 | 7
 13 | Winterfell          |    50 | 7
(13 rows)
