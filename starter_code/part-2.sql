-- Insert Data

-- this is how I input data in each row (for owners table)
-- public folder contains the table in pgAdmin4
INSERT INTO public.owners(
	id, name, age)
	VALUES (10, 'Rob', 99);

-- and calling the table to make sure all data are put together
SELECT id, name, age
	FROM public.owners;

-- this is how I input data in each row (for properties table)
INSERT INTO public.properties(
	id, name, units, owner_id)
	VALUES (13,'random prop3', 11, null);

-- and calling the table to make sure all data are put together
SELECT id, name, units, owner_id
	FROM public.properties;-- Insert Data

