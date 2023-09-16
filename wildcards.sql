-- first we discuss LIKE Operator before going dive to wildcard
-- Like operator we use when we need to search for a special pattern
--syntax
SELECT * FROM tablename WHERE column LIKE pattern;
--for defining pattern we need some wildcards so focus on this
-- we have two wildcard characters in MYSQL
-- %	Represents zero or more characters	
-- _	Represents a single character
------- % wildcard ----------------
WHERE CustomerName LIKE 'a%'	Finds any values that starts with "a"
WHERE CustomerName LIKE '%a'	Finds any values that ends with "a"
WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
WHERE CustomerName LIKE 'a_%_%'	Finds any values that starts with "a" and are at least 3 characters in length
WHERE ContactName LIKE 'a%o'	Finds any values that starts with "a" and ends with "o"
WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
-- Examples --
SELECT * FROM 'customers' WHERE country LIKE 'ind%';-- starting with ind
SELECT * FROM 'customers' WHERE country LIKE '%ind'; --ending with ind
-- new pattern
--suppose we don't have the first send second character but we have the else part so we can underscore wildcard
SELECT * FROM 'customers' WHERE country LIKE '___ia'; --the starting three characters can be anything but last word is ia