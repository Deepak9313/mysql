JOIN IS USED USED TO COMBINE ROWS FROM TWO OR MORE TABLES BASED ON CONDITION
-- THERE ARE FOUR TYPES OF JOINS IN SQL
-- INNER JOIN: Returns records that have matching values in both tables
-- LEFT JOIN: Returns all records from the left table, and the matched records from the right table
-- RIGHT JOIN: Returns all records from the right table, and the matched records from the left table
-- CROSS JOIN: Returns all records from both tables
-- I attach a photo checkout for better understanding of JOINS

--/// INNER JOIN : selects all records that have matching values in both table.
--syntax: (it is like intersection in set)
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
--/// LEFT JOIN : returns all records from the left table, and the matched records from the right table
--syntax : (it give all the data of LEFT TABLE included intersection)
-- LEFT JOIN keyword returns all records from the left table (Customers), even if there are no matches in the right table 
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
--/// RIGHT JOIN : returns all records from the right table,and the matched records from the left table
--syntax: (it give all the data of RIGHT TABLE included intersection)
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
-- /// CROSS JOIN or FULL JOIN : returns all records from both tables
--syntax:
SELECT column_name(s)
FROM table1
CROSS JOIN table2;

-- UNION  Operator
--union operator is used to combine the result of two or more select statements
--syntax
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;
--example
SELECT City FROM Customers
UNION
SELECT City FROM buyer
ORDER BY City; 