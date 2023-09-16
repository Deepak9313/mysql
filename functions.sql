-- we have some functions in sql
-- Count() => counts the numbers of records
-- Sum() => sum the numbers of records
-- Avg() => average the numbers of records
-- Min() => returns the min value the numbers of records
-- Max() => returns the max value the numbers of records
-- like these some other functions also exist like numeric functions
-- ABS for absolute value
-- ACOS returns the inverse cosine of a number
-- ASIN returns the inverse sine of a number
-- ATAN returns the inverse tan of a number
-- CEILING The CEILING SQL function returns the smallest value(integer) that is greater than or equal to a 
--         given number. ex CEILING(56.21) => 57
--COS returns the cosine of a number
-- Count function syntax
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
-- Min function syntax
SELECT MIN(column_name)
FROM table_name
WHERE condition;
-- Max function syntax
SELECT MAX(column_name)
FROM table_name
WHERE condition;
-- Sum function syntax
SELECT SUM(column_name)
FROM table_name
WHERE condition;
-- Average function syntax
SELECT Avg(column_name)
FROM table_name
WHERE condition;

--example
SELECT COUNT(price) FROM 'test' WHERE price <= 2000;--so this give the no of item whose price is less than 2000
SELECT SUM(price) FROM 'test';
SELECT AVG(price) FROM 'test';
SELECT MIN(price) FROM 'test';
SELECT MAX(price) FROM 'test';
-- We have a another thing GROUP BY statement which we use with these functions
--Syntax
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
--example
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;-- this first counts all no of users of country
-- i am explaining suppose india has users 500 and america has users 200 and so on if we use group by command
-- it will give the data of india but not the duplicated users


-- Having clasue
-- why we need this?
-- because where clause cannot be used with aggregate functions so we need having clause
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
--example
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;
-- INSERT INTO SELECT statement is used when we copies data from other table
--syntax
INSERT INTO table2
SELECT * FROM table1
WHERE condition;
--if we need only some specific columns into table2
--syntax
INSERT INTO table2 (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM table1
WHERE condition;
--example
INSERT INTO Customers2 (CustomerName, City, Country)
SELECT CustomerName, City, Country FROM Customer1
WHERE Country='india';