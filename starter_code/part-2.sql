-- Insert Data
-- Insert the following owners
--
-- -- Donald - age 29
-- -- John - age 33
-- -- Jane - age 43
-- -- Add 3 more people (you choose name / age)
-- Insert the following properties (you can pick and choose the property owners)
--
-- Archstone - 20 units
-- Willowspring - 30 units
-- Add 3 more properties (you choose name / units)

apartments=# INSERT INTO owners (name, age) VALUES ('Donald', 29);
apartments=# INSERT INTO owners (name, age) VALUES ('John', 33);
apartments=# INSERT INTO owners (name, age) VALUES ('Jane', 43);
apartments=# INSERT INTO owners (name, age) VALUES ('Sahira', 25);
apartments=# INSERT INTO owners (name, age) VALUES ('Gemma', 76);
apartments=# INSERT INTO owners (name, age) VALUES ('Fritz', 52);

apartments=# INSERT INTO properties (name, units, owner_id) VALUES ('Archstone', 20, 5);
apartments=# INSERT INTO properties (name, units, owner_id) VALUES ('Willowspring', 30, 2);
apartments=# INSERT INTO properties (name, units, owner_id) VALUES ('ChuckaAbra', 12, 1);
apartments=# INSERT INTO properties (name, units, owner_id) VALUES ('Wisterium', 7, 3);
apartments=# INSERT INTO properties (name, units, owner_id) VALUES ('Mira Fuego', 101, 6);
