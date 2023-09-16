-- LIMIT clause get the data number of records in the database
-- it is useful when we have a large number of records
--Syntax
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;
-- example
SELECT * FROM 'test' WHERE 'id' > 3 LIMIT 3 --it will display three record after 3 id
SELECT * FROM 'test' LIMIT 4 -- it will display 4 records from the table
-- we have a another term offset this property we use when we need to fetch the data from a specific index
--like give me the 2 record after 10 rows
SELECT * FROM 'test' LIMIT 2 OFFSET 10;


-- A another term we can use in our journey that is alias if i explain to you it is so simple
-- Like we use in python (import math as m) here we can use m in the place of math
-- sometime the column name will be too big so we can use a small name instead of the big one using AS keyword
SELECT customername AS n FROM 'customer' where n = "mayank"
