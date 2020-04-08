--- Answers for Questions

--- 1. Show all the data in the owners table.
SELECT * FROM owners;
  1 | Donald  |  29
  2 | John    |  33
  3 | Jane    |  43
  4 | Yuki    |  67
  5 | Erin    |  21
  6 | Siobhan |  55
  7 | Maya    |  78
  8 | Tanmoy  |  48
  9 | Dereck  |  35



--- 2. Show the names of all owners.
    SELECT name FROM owners;
    Donald
    John
    Jane
    Yuki
    Erin
    Siobhan
    Maya
    Tanmoy
    Dereck

--- 3. Show the ages of all of the owners in ascending order.
    SELECT age, name from owners order by age;
    21 | Erin
    29 | Donald
    33 | John
    35 | Dereck
    43 | Jane
    48 | Tanmoy
    55 | Siobhan
    67 | Yuki
    78 | Maya

    It can also be written in a different way:
    SELECT age from owners order by age;
    21
    29
    33
    35
    43
    48
    55
    67
    78

--- 4.Show the name of an owner whose name is Donald.
    SELECT name from owners where name='Donald';
     Donald
     OR
     SELECT * from owners where name='Donald';

--- 5.Show the age of all owners who are older than 30.
    SELECT age from owners where age>30;
    33
    43
    67
    55
    78
    48
    35
    or 
    SELECT * from owners where age>30;

--- 6. Show the name of all owners whose name starts with an E.
    SELECT name from owners where name LIKE 'E%';
    Erin

    OR
     SELECT * from owners where name LIKE 'E%';

--- 7.Change Jane's age to 30.
    UPDATE owners SET age=30 WHERE name = 'Jane';
    1 | Donald  |  29
    2 | John    |  33
    4 | Yuki    |  67
    5 | Erin    |  21
    6 | Siobhan |  55
    7 | Maya    |  78
    8 | Tanmoy  |  48
    9 | Dereck  |  35
    3 | Jane    |  30


--- 8.Change Jane's name to Janet.
    UPDATE owners SET name='Janet' WHERE name = 'Jane';
    1 | Donald  |  29
    2 | John    |  33
    4 | Yuki    |  67
    5 | Erin    |  21
    6 | Siobhan |  55
    7 | Maya    |  78
    8 | Tanmoy  |  48
    9 | Dereck  |  35
    3 | Janet   |  30

--- 9. Delete the owner named Janet.
    SELECT id FROM owners WHERE name = 'Janet';
    3
    Delete from properties where owner_id = 3;
     DELETE 2
    Now properties table look like:
    1 | Archstone           |    20 |        2
    2 | Zenith Hills        |    10 |        5
    3 | Willowspring        |    30 |        6
    4 | Ridgefield Bay      |     5 |        4
    5 | Brookvista          |    20 |        4
    7 | Green Haven         |    40 |        2
    8 | Fair Creek          |    35 |        7
    9 | Parkview Pointe     |    50 |        8
    10 | Royal Gardens Court |    45 |        9
    11 | Bay Ridge           |    25 |        4
    12 | Green Meadows       |    10 |        1

    DELETE FROM owners WHERE name = 'Janet';
    DELETE 1

    Now owner table is:
    Select * from owners;
    1 | Donald  |  29
    2 | John    |  33
    4 | Yuki    |  67
    5 | Erin    |  21
    6 | Siobhan |  55
    7 | Maya    |  78
    8 | Tanmoy  |  48
    9 | Dereck  |  35


--- 10. Show the names of the first three owners in your owners table.
    SELECT name FROM owners LIMIT 3;
    Donald
    John
    Yuki
    or 
    SELECT * FROM owners LIMIT 3;

--- 11. Show the name of all owners whose name contains an `a`.
    SELECT name FROM owners WHERE name LIKE '%a%';
    Donald
    Siobhan
    Maya
    Tanmoy
    OR
    SELECT * FROM owners WHERE name LIKE '%a%';

--- 12.Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5.
     SELECT * FROM properties WHERE name!='Archstone' and id!=3 and id!=5 ORDER BY name;
    11 | Bay Ridge           |    25 |        4
    8 | Fair Creek          |    35 |        7
    7 | Green Haven         |    40 |        2
    12 | Green Meadows       |    10 |        1
    9 | Parkview Pointe     |    50 |        8
    4 | Ridgefield Bay      |     5 |        4
    10 | Royal Gardens Court |    45 |        9
    2 | Zenith Hills        |    10 |        5

--- 13.Show the highest age of all owners.
    SELECT MAX(age) FROM owners;
    78

--- 14.Show the highest age of owners who are under 30 and whose name contains an `o`. Limit to one result.
     SELECT MAX(age) FROM owners WHERE age <30 and name LIKE '%o%' LIMIT 1;
     29

--- 15. Count the total number of properties where the owner_id is between 1 and 3.
    SELECT COUNT(name) FROM properties WHERE owner_id>=1 and owner_id<=3;
    3


--- Bonuses (if attempted)
--- 16. List all properties sorted by the owners names 
    SELECT * FROM properties INNER JOIN owners ON properties.owner_id=owners.id ORDER BY owners.name;
    10 | Royal Gardens Court |    45 |        9 |  9 | Dereck  |  35
    12 | Green Meadows       |    10 |        1 |  1 | Donald  |  29
    2 | Zenith Hills        |    10 |        5 |  5 | Erin    |  21
    7 | Green Haven         |    40 |        2 |  2 | John    |  33
    1 | Archstone           |    20 |        2 |  2 | John    |  33
    8 | Fair Creek          |    35 |        7 |  7 | Maya    |  78
    3 | Willowspring        |    30 |        6 |  6 | Siobhan |  55
    9 | Parkview Pointe     |    50 |        8 |  8 | Tanmoy  |  48
    4 | Ridgefield Bay      |     5 |        4 |  4 | Yuki    |  67
    11 | Bay Ridge           |    25 |        4 |  4 | Yuki    |  67
    5 | Brookvista          |    20 |        4 |  4 | Yuki    |  67

--- 17.In the properties table change the name of the column "name" to "property_name".
    ALTER TABLE properties RENAME COLUMN "name" TO "property_name";
    SELECT * FROM properties;
    id |    property_name    | units | owner_id 
----+---------------------+-------+----------
  1 | Archstone           |    20 |        2
  2 | Zenith Hills        |    10 |        5
  3 | Willowspring        |    30 |        6
  4 | Ridgefield Bay      |     5 |        4
  5 | Brookvista          |    20 |        4
  7 | Green Haven         |    40 |        2
  8 | Fair Creek          |    35 |        7
  9 | Parkview Pointe     |    50 |        8
 10 | Royal Gardens Court |    45 |        9
 11 | Bay Ridge           |    25 |        4
 12 | Green Meadows       |    10 |        1
(11 rows)

--- 18. Add a new property to the owner with an id of 3.
    INSERT INTO owners (id, name, age) VALUES (3, 'Jane', 43);
    SELECT * FROM owners;
        id |  name   | age 
        ----+---------+-----
        1 | Donald  |  29
        2 | John    |  33
        4 | Yuki    |  67
        5 | Erin    |  21
        6 | Siobhan |  55
        7 | Maya    |  78
        8 | Tanmoy  |  48
        9 | Dereck  |  35
        3 | Jane    |  43

    INSERT INTO properties (property_name, units, owner_id) VALUES ('Goldendale', 15, 3);
    SELECT * FROM properties;
        id |    property_name    | units | owner_id 
        ----+---------------------+-------+----------
        1 | Archstone           |    20 |        2
        2 | Zenith Hills        |    10 |        5
        3 | Willowspring        |    30 |        6
        4 | Ridgefield Bay      |     5 |        4
        5 | Brookvista          |    20 |        4
        7 | Green Haven         |    40 |        2
        8 | Fair Creek          |    35 |        7
        9 | Parkview Pointe     |    50 |        8
        10 | Royal Gardens Court |    45 |        9
        11 | Bay Ridge           |    25 |        4
        12 | Green Meadows       |    10 |        1
        14 | Goldendale          |    15 |        3


