-- CREATE VIEW statement is used to retrieve specific data from the database and make a new table in the database
--Syntax:
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
--example
CREATE VIEW data2 AS SELECT city,country,id FROM 'test';
-- IN MYSQL we have data types for storing date
DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY
-- At the time of creation of table we have to give these data types accoring to the need
-- At the time of searching we have to give the input in exact format as mentioned above only then we can retrive data


-- Primary and Foreign keys
-- This is a very interesting thing in mysql this basically comes when we make a relation between two tables like a user table and a order history table
-- these two tables are connected to each other with a single column which is present in both tables like userid is present in both columns
-- userid is the primary key in the user table and foreign key in the order history table
-- syntax for assigning relation between tables
ALTER TABLE `persons` ADD CONSTRAINT `test` FOREIGN KEY (`id`) REFERENCES `data`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
---- Thats all for now ----
-- NOW PRACTICE SOME QUESTIONS ON SQL--