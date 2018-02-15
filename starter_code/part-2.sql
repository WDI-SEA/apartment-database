-- Insert Data
apartments=# INSERT INTO owners                                                                                                                       (name, age)                                                                                                                                           VALUES                                                                                                                                                ('John', '33');
INSERT 0 1
apartments=# INSERT INTO owners                                                                                                                       (name, age)                                                                                                                                           VALUES                                                                                                                                                ('Jane', '43');
INSERT 0 1
apartments=# INSERT INTO owners                                                                                                                       (name, age)                                                                                                                                           VALUES                                                                                                                                                ('Greg', '53');
INSERT 0 1
apartments=# INSERT INTO owners                                                                                                                       (name, age)                                                                                                                                           VALUES                                                                                                                                                ('Kate', '83');
INSERT 0 1
apartments=# INSERT INTO owners                                                                                                                       (name, age)                                                                                                                                           VALUES                                                                                                                                                ('Barney', '59');
INSERT 0 1
apartments=# SELECT * FROM owners;
 id |  name  | age
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  3 | Jane   |  43
  4 | Greg   |  53
  5 | Kate   |  83
  6 | Barney |  59
(6 rows)
