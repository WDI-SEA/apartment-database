-- Insert Data

samhawkins=# INSERT INTO properties (name, units, owner_id) VALUES ('Brookvista', '20', 5);
INSERT 0 1
samhawkins=# INSERT INTO properties (name, units, owner_id) VALUES ('Goldendale', '15', 4);
INSERT 0 1
samhawkins=# INSERT INTO properties (name, units, owner_id) VALUES ('Green Haven', '40', 1);
INSERT 0 1
samhawkins=# INSERT INTO properties (name, units, owner_id) VALUES ('Fair Creek', '35', 4);
INSERT 0 1
samhawkins=# INSERT INTO properties (name, units, owner_id) VALUES ('Parkview Pointe', '50', 6);
INSERT 0 1
samhawkins=# INSERT INTO properties (name, units, owner_id) VALUES ('Royal Gardens Court', '45', 3);
INSERT 0 1
samhawkins=# INSERT INTO properties (name, units, owner_id) VALUES ('Mar a Lago', '126', 1);
INSERT 0 1
samhawkins=# INSERT INTO properties (name, units, owner_id) VALUES ('Hemlock Court', '500', 8);
INSERT 0 1
samhawkins=# INSERT INTO properties (name, units, owner_id) VALUES ('Katorga', '49', 9);
INSERT 0 1
samhawkins=#
samhawkins=# select * from owners                                                                             ;
 id |    name    | age
----+------------+-----
  1 | Donald     |  29
  2 | John       |  33
  3 | Jane       |  43
  4 | Yuki       |  67
  5 | Erin       |  21
  6 | Siobhan    |  55
  7 | Methuselah | 969
  8 | Socrates   |  71
  9 | Fyodor     |  60
(9 rows)

samhawkins=# select * from properties                                                                         ;
 id |        name         | units | owner_id
----+---------------------+-------+----------
  1 | Archstone           |    20 |        3
  2 | Zenith Hills        |    10 |        2
  3 | Willowspring        |    30 |        6
  4 | Ridgefield Bay      |     5 |        1
  5 | Brookvista          |    20 |        5
  6 | Goldendale          |    15 |        4
  7 | Green Haven         |    40 |        1
  8 | Fair Creek          |    35 |        4
  9 | Parkview Pointe     |    50 |        6
 10 | Royal Gardens Court |    45 |        3
 11 | Mar a Lago          |   126 |        1
 12 | Hemlock Court       |   500 |        8
 13 | Katorga             |    49 |        9
(13 rows)

samhawkins=# 
