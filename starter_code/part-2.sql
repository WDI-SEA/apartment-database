--Place your answers in part-2.sql.

--Insert the following owners

--Donald - age 29
--John - age 33
--Jane - age 43
--Add 3 more people (you choose name / age)
--Insert the following properties (you can pick and choose the property owners)

--Archstone - 20 units
--Willowspring - 30 units
--Add 3 more properties (you choose name / units)-- Insert Data

INSERT INTO owner (name, age) VALUES ('Donald', 29), ('John', 33), ('Jane', 43),
('Nick', 33), ('Jess', 32), ('Winston', 33);

INSERT INTO property (name, units, owner_id) VALUES ('Archstone', 20, 1),
('Willowspring', 30, 2), ('Brookside', 35, 3), ('Meadowvale', 15, 4), ('Griffin', 20, 5);
