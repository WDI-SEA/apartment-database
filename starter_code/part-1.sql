-- Create tables


CREATE TABLE owner (
	id SERIAL primary key,
	name VARCHAR,
	age INT
)



CREATE TABLE properties (
	id SERIAL primary key,
	name VARCHAR,
	units INT,
	owner_id INT
)

