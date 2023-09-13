-- DML commands consists for => UPDATE,INSERT,DELETE
-- UPDATE command
-- Syntax :=> UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE condition;
UPDATE `data` SET `name` = 'abc',`age` = 12 WHERE `id`= 1;
-- carefull if you do not use where clause it will affect all rows
-- INSERT command
-- Syntax :=> INSERT INTO table_name (column1, column2, column3, ...) VALUES (value1, value2, value3, ...);
INSERT INTO `data` (`name`,`age`)VALUES("xyz",12);
-- If you want to insert the data into all columns we use => INSERT INTO table_name VALUES (value1, value2, value3)

-- DELETE command => DELETE statement is used to delete existing records in a table.
-- Syntax :=> DELETE FROM table_name WHERE condition;
DELETE FROM `data` WHERE `id` = 0;