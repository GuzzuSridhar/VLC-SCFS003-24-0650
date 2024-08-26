 /* display all columns and rows of a table
 Syntax
 select <Column_list> from <table_name>
	Column List: * to display all columns or coma seperated column names
	table_name: the table name from your schema
 */

-- display all columns and rows in emp table
SELECT 
    *
FROM
    emp.emp;
-- display all columns and rows in dept table
SELECT 
    *
FROM
    emp.dept;

-- display specific columns of emp table
SELECT 
    empno, ename
FROM
    emp.emp;
    
-- table statement
-- same as writing (select * from emp;)
table emp;

