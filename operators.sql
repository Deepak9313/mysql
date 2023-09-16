-- We can use many operators with where clasue
-- AND , OR and NOT 
-- ADD syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
--example
SELECT * FROM 'test' WHERE country = "india" AND age = 23
-- OR syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;
-- example
SELECT * FROM 'test' WHERE country = "india" OR country="bharat"
-- NOT syntax
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
--example
SELECT * FROM 'test' WHERE NOT country = "india"

-- Suppose we need to find the null values in a column so it is not possible to test using < ,> =
-- we can use IS NULL and IS NOT NULL operator
-- Syntax for IS NULL operator
SELECT column_names
FROM table_name
WHERE column_name IS NULL;
-- Syntax for IS NOT NULL operators
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
-- IN OPERATOR
-- Suppose we need to find multiple values in a column so we can use IN operator
--syntax for IN operator
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
--example
SELECT * FROM 'test' WHERE 'state' IN ('delhi',"up","assam") -- get all the data where these three values match
--we can use alternative of IN using NOT IN operator
--BETWEEN operator
-- This operator selects values within a given range The values can be numbers, text, or dates.
--Syntax for Betweeen operator
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
--example
SELECT * FROM 'test' WHERE 'price' BETWEEN 200 AND 1000;-- this acts like a filter in ecommerce
--Syntax for NOT BETWEEN operator
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;
-- Suppose we are dealing with text values -- so we use between like below
SELECT * FROM Products
WHERE animals NOT BETWEEN "cat" AND "lion"-- this give the data in the range c to l because we are dealing with text here
-- Suppose we need to find the between some particular dates so there it is the way
SELECT * FROM Orders
WHERE 'date' BETWEEN '2023-08-18' AND '2024-01-15';
-- above query gives the data in the range between one data to another