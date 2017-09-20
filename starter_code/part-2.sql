apartments=# SELECT * FROM owners;
 id |  name  | age 
----+--------+-----
  1 | Donald |  29
  2 | John   |  33
  3 | Jane   |  43
  4 | Martha |  35
  5 | Bob    |  52
  6 | Abby   |  34
(6 rows)


apartments=# SELECT * FROM properties;
 id |     name     | units | owners_id 
----+--------------+-------+-----------
  1 | Archstone    |    20 |         1
  2 | Willowspring |    30 |         2
  3 | Cascadia     |    40 |         3
  4 | Willowcreek  |    35 |         4
  5 | Silverfalls  |    25 |         5
  6 | Gemheights   |    55 |         6
(6 rows)

