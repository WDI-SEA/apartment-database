-- Insert Data

apartments=# INSERT INTO owner (name, age) VALUES('Donald',29);

apartments=# INSERT INTO owner (name, age) VALUES('John', 33);

apartments=# INSERT INTO owner (name, age) VALUES('Jane', 43);

apartments=# INSERT INTO owner (name, age) VALUES('Yuki', 67);

apartments=# INSERT INTO owner (name, age) VALUES('Erin', 21);

apartments=# INSERT INTO owner (name, age) VALUES('Siobhan', 55);

apartments=# INSERT INTO owner (name, age) VALUES('Justin', 29);

apartments=# INSERT INTO owner (name, age) VALUES('Devan', 22);

apartments=# INSERT INTO owner (name, age) VALUES('Brian', 34);

apartments=# INSERT INTO property (name, units, owner_id) VALUES('Zenith Hills', 10, (SELECT id FROM owner WHERE name='Yuki'));

apartments=# INSERT INTO property (name, units, owner_id) VALUES('Willowspring', 30, (SELECT id FROM owner WHERE name='Justin'));

apartments=# INSERT INTO property (name, units, owner_id) VALUES('Ridgefield Bay', 5, (SELECT id FROM owner WHERE name='Erin'));

apartments=# INSERT INTO property (name, units, owner_id) VALUES('Brookvista', 20, (SELECT id FROM owner WHERE name='Devan'));

apartments=# INSERT INTO property (name, units, owner_id) VALUES('Goldenfale', 15, (SELECT id FROM owner WHERE name='Siobhan'));

apartments=# INSERT INTO property (name, units, owner_id) VALUES('Green Haven', 40, (SELECT id FROM owner WHERE name='Jane'));

apartments=# INSERT INTO property (name, units, owner_id) VALUES('Fair Creek', 35, (SELECT id FROM owner WHERE name='Justin'));

apartments=# INSERT INTO property (name, units, owner_id) VALUES('Parkview Pointe', 50, (SELECT id FROM owner WHERE name='Brian'));

apartments=# INSERT INTO property (name, units, owner_id) VALUES('Royal Gardens Court', 45, (SELECT id FROM owner WHERE name='Donald'));

apartments=# INSERT INTO property (name, units, owner_id) VALUES('Millwood Estates', 200, (SELECT id FROM owner WHERE name='Justin'));

apartments=# INSERT INTO property (name, units, owner_id) VALUES('Winterhaven', 75, (SELECT id FROM owner WHERE name='Siobhan'));

apartments=# INSERT INTO property (name, units, owner_id) VALUES('Solaris', 25, (SELECT id FROM owner WHERE name='Justin'));

