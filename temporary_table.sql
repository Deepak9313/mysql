-- Temporary table is like a real table but only exists for a session when the developer session out it automatically deleted 
-- It consists of two types
-- 1) Local Temp Variable :- Exist till when the user session logged out
-- 2) Global Temp Variable :- Exist till and not deleted until the total connection is withdrawn

-- 1) 
-- in SQL SERVER Only exist both terms because they invented this thing
CREATE TABLE #local temp test(
    User id int,
    User name varchar(50),
    User address varchar(170)
);
-- in MYSQL
CREATE TEMPORARY TABLE temp_customer(
    id int,
    name varchar(100)
)
-- in Postgres
CREATE TEMP TABLE temp_customer(
    -- same code
)

-- 2)
-- in SQL SERVER
CREATE TABLE ##new global temp test(
    User id int,
    User name varchar(50),
    User address varchar(170)
) 
-- IN ORACLE
CREATE GLOBAL TEMPORARY TABLE temp_cust(
    -- same code
) on COMMIT DELETE ROWS;


-- ALTER COMMANDS ALSO 
ALTER TABLE test RENAME TO test2;
ALTER TABLE test ADD description varchar(100);
ALTER TABLE test DROP description;
ALTER TABLE MODIFY description nvarchar(100);
