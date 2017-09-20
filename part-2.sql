-- ### Part 2: Insert Data
--
-- Place your answers in `part-2.sql`.
--
-- * Insert the following owners
--     * Donald - age 29
--     * John - age 33
--     * Jane - age 43
--     * Add 3 more people (you choose name / age)
--
-- * Insert the following properties (you can pick and choose the property owners)
--     * Archstone - 20 units
--     * Willowspring - 30 units
--     * Add 3 more properties (you choose name / units)

insert into owner (name, age) values ('Donald', 29), ('John', 33), ('Jane', 43), ('Aristotle', 2393), ('Matt', 27), ('David', 10);
insert into property (name, units, owner_id) values ('Archstone', 20, 2), ('Rain', 40, 3), ('Carpe Diem', 34, 2), ('Willowspring', 30, 5), ('Indigo', 555, 1);
