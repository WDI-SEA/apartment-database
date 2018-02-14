-- Insert Data

-- Insert the following owners

-- Donald - age 29
-- John - age 33
-- Jane - age 43
-- Add 3 more people (you choose name / age)
-- Insert the following properties (you can pick and choose the property owners)

-- Archstone - 20 units
-- Willowspring - 30 units
-- Add 3 more properties (you choose name / units)

INSERT INTO owner (name, age) VALUES ('Donald', '29'), ('John', '33'), ('Jane', '43'), ('Emily', '23'), ('Taylor', '25'), ('Leah', '30'), ('Clare', '23');
INSERT INTO property (name, units, owner_id) VALUES ('Archstone', '20', '1'), ('Willowspring', '30', '2'), ('Sunset View', '256', '3'), ('Cedarspring', '15', '5'), ('Skullcrusher Creek', '69', '3');