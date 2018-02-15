-- Insert Data

apartments=# INSERT INTO owners (name, age)
apartments-# VALUES ('Donald', 29),
apartments-# ('John', 33),
apartments-# ('Jane', 43),
apartments-# ('Bilbins', 117),
apartments-# ('Joeshwagginz', 16),
apartments-# ('Hyuphyup', 60);

apartments=# INSERT INTO properties (name, units, owner_id)
apartments-# VALUES ('Archtone', 20, 3),
apartments-# ('Willowspring', 30, 2),
apartments-# ('Planet Doom', 666, 5),
apartments-# ('Gyup gyup', 39, 6),
apartments-# ('Shiretownville', 42, 4);
