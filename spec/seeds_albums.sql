-- EXAMPLE
-- (file: spec/seeds_{table_name}.sql)

-- Write your SQL seed here. 

-- First, you'd need to truncate the table - this is so our table is emptied between each test run,
-- so we can start with a fresh state.
-- (RESTART IDENTITY resets the primary key)

TRUNCATE TABLE albums RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO albums (title, release_year) VALUES ('Doobig', 2000);
INSERT INTO albums (title, release_year) VALUES ('The Water', 2018);
INSERT INTO albums (title, release_year) VALUES ('Talk Me Down', 1965);
INSERT INTO albums (title, release_year) VALUES ('Postman', 2019);
INSERT INTO albums (title, release_year) VALUES ('Sugar Man', 2022);
INSERT INTO albums (title, release_year) VALUES ('The Truth', 1962);
INSERT INTO albums (title, release_year) VALUES ('Youth', 2001);
