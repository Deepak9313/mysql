-- DQL stands for DATA QUERY LANGUAGE
-- THIS CONSITS OF SELECT STATEMENT
-- SELECT command
-- Syntax :=> SELECT column1, column2, ... FROM table_name;
SELECT `name` FROM `data`;
-- We can use retrieve data from the database . we use multiple things to retrieve data in a efficient manner
-- * is used to get the all data
-- DISTINCT is used to get the unique data in column
SELECT DISTINCT `city` FROM `data`; -- only get the unique data means didn't return duplicate data
SELECT COUNT(DISTINCT `city`) FROM `data`; --count the no of unique data
SELECT * FROM `data` WHERE `city` = "delhi"; -- get the data from where clause

-- SOME OPERATOR WE USE WITH WHERE CLAUSE
-- =	        =>        Equal	
-- >	        =>        Greater than	
-- <	        =>        Less than	
-- >=	        =>        Greater than or equal	
-- <=	        =>        Less than or equal	
-- <>	        =>        Not equal. Note: In some versions of SQL this operator may be written as !=	
-- BETWEEN	    =>        Between a certain range	
-- LIKE	        =>        Search for a pattern	
-- IN	        =>        To specify multiple possible values for a column

-- BETWEEN Operator
SELECT * FROM `data` WHERE `age` BETWEEN 5 AND 15;
-- LIKE operator
SELECT * FROM `data` WHERE `name` LIKE 's%';
-- IN Operator
SELECT * FROM `test`.`data` WHERE `name` IN ('delhi','assam');
-- ORDER by Clause
-- syntac :=> SELECT column1, column2, ... FROM table_name ORDER BY column1, column2, ... ASC|DESC;
SELECT `name` FROM `data` ORDER BY `name` ASC;