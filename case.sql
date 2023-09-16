-- like if else in programming language we have a case keyword in sql which we uses for some specific conditions
-- syntax
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;
--example
SELECT orderid,price,
CASE 
    WHEN Quantity > 30 THEN "quantity is greater than 30"
    WHEN Quantity = 50 THEN "quantity is equal to 50"
ELSE "quantity is less than 30"
END AS quantitytext
FROM orderdetails;
