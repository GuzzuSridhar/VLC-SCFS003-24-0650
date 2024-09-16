-- Shows active connections and queries running on the server.
SHOW PROCESSLIST;

-- Provides information about the MySQL server's status (connections, queries, uptime, etc.).
show status;

--  Displays grants (permissions) for a user.
SHOW GRANTS FOR 'alex'@'localhost';

show create table emp;
show create view emp_details;
-- Shows warning messages generated during the last query.
SHOW WARNINGS;
-- Shows error messages generated during the last query.
SHOW ERRORS;

-- list users on the DB
SELECT user, host FROM mysql.user;

-- List of Indexes
SHOW INDEX FROM emp.emp;

-- Lists columns in a table, along with their data types and other attributes.
SHOW COLUMNS FROM EMP.EMP;


