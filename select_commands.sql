-- lets do the select from start to end
SELECT * FROM test;
SELECT id,name FROM test;
-- FOR Unique data use DISTINCT
SELECT DISTINCT Country FROM test;
-- For Counting the data
SELECT COUNT(Country) FROM test;
-- Select with limited data

-- SQL
SELECT TOP 4 * FROM test;
SELECT TOP 50 PERCENT * FROM test;
-- MYSQL
SELECT * FROM test LIMIT 10;
-- ORACLE
SELECT * FROM test WHERE ROWNUM <= 10;
-- Only work in MS Access
SELECT FIRST(Country) FROM test;
SELECT LAST(Country) FROM test;

-- RANDOM with SELECT
-- MYSQL
SELECT * FROM test ORDER BY RAND() LIMIT 5;
-- SQL SERVER
SELECT TOP 1 * FROM test ORDER BY NEW ID();
-- ORACLE
SELECT * FROM (SELECT * FROM test ORDER BY dbms.random.value) WHERE ROWNUM = 1
-- PostgreSQL
SELECT * FROM test ORDER BY RAND() LIMIT 4;

-- SELECT with IN
SELECT * FROM test WHERE roll_no IN (1,2,3);

-- SELECT Multiple Data
SELECT c.id,o.order_name,s.salary
FROM customer c 
INNER JOIN orders o 
ON
o.id = c.id 
INNER JOIN salary s 
ON
s.id = c.id

-- SELECT with DATE
SELECT * FROM test WHERE date BETWEEN '2025-04-14' AND '2025-04-20';

-- SELECT with SUM
SELECT SUM(salary) as "TOTAL SALARY" FROM test WHERE salary > 10000;

-- SELECT with NULL to check null values
SELECT * FROM test WHERE description IS NULL 
SELECT * FROM test WHERE description IS NOT NULL;