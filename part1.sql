#PART 1
CREATE DATABASE apartments;
CREATE TABLE owner (id SERIAL PRIMARY KEY, name TEXT,age INT);
CREATE TABLE property (id SERIAL PRIMARY KEY, name TEXT,units INT, owner_id INT);

INSERT INTO owner (name, age) VALUES('Donald', '29');
INSERT INTO owner (name, age) VALUES('John', '33');
INSERT INTO owner (name, age) VALUES('Jane', '43');
INSERT INTO owner (name, age) VALUES('Yuki', '67');
INSERT INTO owner (name, age) VALUES('Erin', '21');
INSERT INTO owner (name, age) VALUES('Siobhan','55');
INSERT INTO owner (name, age) VALUES('James', '28');
INSERT INTO owner (name, age) VALUES('Helen', '25');
INSERT INTO owner (name, age) VALUES('Jay', '27');

INSERT INTO property (name, units, owner_id) VALUES ('Archstone', 20, 3)
INSERT INTO property (name, units, owner_id) VALUES ('Zenith Hills', 10,5)
INSERT INTO property (name, units, owner_id) VALUES ('Willowspring', 30,1);
INSERT INTO property (name, units, owner_id) VALUES ('Ridgefield Bay', 5,4);
INSERT INTO property (name, units, owner_id) VALUES ('Brookvista', 20,6);
INSERT INTO property (name, units, owner_id) VALUES ('Goldendale', 15, 2);
INSERT INTO property (name, units, owner_id) VALUES ('Green Heaven', 40,8);
INSERT INTO property (name, units, owner_id) VALUES ('Fair Creek', 35,8);
INSERT INTO property (name, units, owner_id) VALUES ('Parkview Pointe', 45,7);
INSERT INTO property (name, units, owner_id) VALUES ('Mill Creek', 38,9);
INSERT INTO property (name, units, owner_id) VALUES ('Green Lake Pointe', 31,10);
INSERT INTO property (name, units, owner_id) VALUES ('West Side' , 31,3);
