-- In this we do some queries which focus how you can get the data from one table or one database to another
INSERT INTO test 
SELECT * FROM CUSTOMERS;
-- If You want to create a table replica
CREATE TABLE test AS
SELECT * or COLUMN NAMES FROM CUSTOMERS;
-- Describe your Table
DESCRIBE test; 
DESC test;
-- Rename the table
RENAME test to test2;
or 
ALTER TABLE test RENAME TO test2;