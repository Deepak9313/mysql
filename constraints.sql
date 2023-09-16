-- We use constraints to give the additional information to columns
NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY - Prevents actions that would destroy links between tables
CHECK - Ensures that the values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column if no value is specified
CREATE INDEX - Used to create and retrieve data from the database very quickly
-- NOT NULL usage
CREATE TABLE Persons (
    `id` int NOT NULL,
    `name` varchar(255) NOT NULL,
);
-- Unique usage
-- A PRIMARY KEY constraint automatically has a UNIQUE constraint.
CREATE TABLE Persons (
    `id` int NOT NULL UNIQUE,
    `name` varchar(255) NOT NULL
);
-- Add constraint
ALTER TABLE `test` ADD UNIQUE (`id`);
-- Drop constraint
ALTER TABLE `test` DROP UNIQUE (`id`);
-- PRIMARY KEY constraint
CREATE TABLE Persons (
    `id` int NOT NULL,
    `name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);
-- this not give the null value it give 0
-- FOREIGN KEY constraint
-- it is used to link two tables.A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
ALTER TABLE `persons` ADD CONSTRAINT `test` FOREIGN KEY (`id`) REFERENCES `data`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
-- Check constraint
-- The CHECK constraint is used to limit the value range that can be placed in a column.
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age>=18)
);
-- check not work in phpmyadmin
ALTER TABLE Persons ADD CHECK (Age>=18);
-- DEFAULT constraint
-- The DEFAULT constraint is used to set a default value for a column.
CREATE TABLE Persons (
    `id` int NOT NULL,
    `name` varchar(255) NOT NULL,
    `city` varchar(255) DEFAULT 'delhi'
);
-- Auto increment constraint
-- if we want to increment the value of a table automatically when we insert the data
CREATE TABLE Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);