-- TCL stands for Transaction Control Language
-- it consists of COMMIT,ROLLBACK and SAVEPOINT
-- TCL commands can only use with DML commands like INSERT, DELETE and UPDATE only.
-- Commit command
--  Commit: Commit command is used to save all the transactions to the database.
DELETE FROM CUSTOMERS WHERE AGE = 25; COMMIT;
-- Rollback command
-- Rollback: Rollback command is used to undo transactions that have not already been saved to the database
DELETE FROM CUSTOMERS WHERE AGE = 25; ROLLBACK;
-- Savepoint command
--SAVEPOINT: It is used to roll the transaction back to a certain point without rolling back the entire transaction
SAVEPOINT SAVEPOINT_NAME;