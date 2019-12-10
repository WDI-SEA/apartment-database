-- Insert Data
\connect apartments

INSERT INTO owner (name, age) VALUES ('Donald', '29');
INSERT INTO owner (name, age) VALUES ('John', '33');
INSERT INTO owner (name, age) VALUES ('Jane', '43');
INSERT INTO owner (name, age) VALUES ('Yuki', '67');
INSERT INTO owner (name, age) VALUES ('Erin', '21');
INSERT INTO owner (name, age) VALUES ('Siobhan', '55');
INSERT INTO owner (name, age) VALUES ('Kennan', '30');
INSERT INTO owner (name, age) VALUES ('Ryan', '30');
INSERT INTO owner (name, age) VALUES ('Marcy', '55');

INSERT INTO property (name, units, owner_id) VALUES ('Archstone', '20', '1');
INSERT INTO property (name, units, owner_id) VALUES ('Zenith', '10', '1');
INSERT INTO property (name, units, owner_id) VALUES ('Willowspring', '30', '9');
INSERT INTO property (name, units, owner_id) VALUES ('Ridgefield Bay', '5', '5');
INSERT INTO property (name, units, owner_id) VALUES ('Brookvista', '20', '5');
INSERT INTO property (name, units, owner_id) VALUES ('Goldendale', '15', '4');
INSERT INTO property (name, units, owner_id) VALUES ('Green Haven', '40', '8');
INSERT INTO property (name, units, owner_id) VALUES ('Fair Creek', '35', '7');
INSERT INTO property (name, units, owner_id) VALUES ('Parkview Pointe', '50', '2');
INSERT INTO property (name, units, owner_id) VALUES ('Royal Gardens Court', '45', '7');
INSERT INTO property (name, units, owner_id) VALUES ('Buckingham Palace', '100', '3');
INSERT INTO property (name, units, owner_id) VALUES ('Amli', '300', '6');
INSERT INTO property (name, units, owner_id) VALUES ('Brookhaven', '18', '3');