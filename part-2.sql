-- Part 2: Insert Data
-- Place your answers in part-2.sql.
-- Insert the following owners
-- Donald - age 29
-- John - age 33
-- Jane - age 43
-- Add 3 more people (you choose name / age)

INSERT INTO owner (name, age) VALUES
('Donald', '29'),
('John', '33'),
('Jane', '43'),
('Jack', '26'),
('Jim', '58'),
('Jenny', '35');

-- Insert the following properties (you can pick and choose the property owners)
-- Archstone - 20 units
-- Willowspring - 30 units
-- Add 3 more properties (you choose name / units)

INSERT INTO properties (name, units, owner_id) VALUES
('Archstone', '20', '6'),
('Willowspring', '30', '1'),
('Hearthstone', '10', '2'),
('Lynnwood Lane', '50', '3'),
('Mayflower', '15', '4'),
('Santa Maria', '20', '5');