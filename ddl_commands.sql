-- This contains all Data Defination Language
-- Like CREATE,DROP,ALTER,TRUNCATE
-- CREATE command
-- syntax for database CREATE TABLE( COLUMN NAME DATATYPE ,COLUMN NAME DATATYPE....)
CREATE DATABASE db_name;
CREATE TABLE `test`.`data` (`id` INT(255) NOT NULL AUTO_INCREMENT , `name` VARCHAR(255) NOT NULL , `contact` VARCHAR(255) NOT NULL , `timestamp` TIMESTAMP NOT NULL , PRIMARY KEY (`id`));
-- DROP command
DROP DATABASE db_name;
DROP TABLE `test`.`data`;
-- ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
-- syntax ::=> ALTER TABLE table_name ADD column_name datatype;
ALTER TABLE `test`.`data` ADD `description` VARCHAR(255) NOT NULL;
ALTER TABLE `test`.`data` DROP `description` VARCHAR(255);
ALTER TABLE `test`.`data` RENAME COLUMN old_name to new_name;
-- but in mysql it not run because of change of syntax
-- ALTER TABLE `data` CHANGE `des` `descr` VARCHAR(255) ; -> this works in mysql marina db server

--TRUNCATE :=> : It is used to delete all the rows from the table and free the space containing the table.
TRUNCATE TABLE `data`;