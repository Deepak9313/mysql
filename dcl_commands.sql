-- DQL stands for DATA CONTROL LANGUAGE
--  This consists of GRANT , REVOKE 
-- Grant: It is used to give user access privileges to a database.
GRANT SELECT, UPDATE ON MY_TABLE TO SOME_USER, ANOTHER_USER

-- Revoke: It is used to take back permissions from the user.
REVOKE SELECT, UPDATE ON MY_TABLE FROM USER1, USER