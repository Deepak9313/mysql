-- We use Clauses to filtering the data from the table
-- Types of clauses
1) Where Clause
2) AND Clause
3) OR Clause
4) WITH Clause :- The SQL WITH clause is used to provide a sub-query block which can be referenced in several places within the main SQL query. It was introduced by oracle in oracle 9i release2 database.

WITH cte_name AS (
  SELECT column1, column2
  FROM some_table
  WHERE condition
)
SELECT *
FROM cte_name;

5) AS Clause :- It is used to give the alias of a table
for column :- count(amount) AS Total_Amount
for table :- SELECT * FROM students AS s 

6) HAVING Clause :- It is used with group by clause and only work with select command

SELECT SUM(Emp_Salary), Emp_City FROM Employee GROUP BY Emp_City HAVING SUM(Emp_Salary)>5000;  