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