-- comment
CREATE TABLE owner (id SERIAL PRIMARY KEY, name VARCHAR(50), age INT);
CREATE TABLE property (id SERIAL PRIMARY KEY, name VARCHAR(50), units INT, owner_id INT);

