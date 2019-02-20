-- Create tables
create table owners(id serial primary key, name text, age integer);

insert into owners (name, age) values ('Donald', '29');

insert into owners (name, age) values ('John', '33');

insert into owners (name, age) values ('Jane', '43');

insert into owners (name, age) values ('Erin', '21');

insert into owners (name, age) values ('Siobhan', '55');

insert into owners (name, age) values ('Sally', '32');

insert into owners (name, age) values ('George', '35');

insert into owners (name, age) values ('Tim', '28');

create table properties (id serial primary key, name text, units integer, owner_id integer);

insert into properties (name, units) values ('Archstone', '20');

insert into properties (name, units) values ('Zenith Hills', '10');

insert into properties (name, units) values ('Willowspring', '30');

insert into properties (name, units) values ('Ridgefield Bay', '5');

insert into properties (name, units) values ('Brookvista', '20');

insert into properties (name, units) values ('Goldendale', '15');

insert into properties (name, units) values ('Green Haven', '40');

insert into properties (name, units) values ('Fair Creek', '35');

insert into properties (name, units) values ('Parkview Pointe', '50');

insert into properties (name, units) values ('Royal Gardens Court', '45');

insert into properties (name, units) values ('Sesame Street', '123');

insert into properties (name, units) values ('Jackson Street', '15');

insert into properties (name, units) values ('MLK Drive', '20');