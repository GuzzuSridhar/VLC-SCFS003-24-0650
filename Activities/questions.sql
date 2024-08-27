-- Write a SQL statement to display a string "This is SQL Exercise". 
select 'This is SQL Exercise';
-- Write a SQL query to display three numbers in three columns. 
select 10,20,30;
-- Write a SQL query to display the sum of two numbers 10 and 15
select 10 +15;
-- write a query to evaluate any arithmetic  expression (10+20*70+20/10)
select 10+20*70+20/10;


/* Using emp schema */
--  display all employee names 
SELECT 
    ename
FROM
    emp.emp;
--  display all the columns and rows of emp table
SELECT 
    *
FROM
    emp.emp;
--  display employees working in department number 10
SELECT 
    *
FROM
    emp.emp
WHERE
    deptno = 10;
--  display all the columns and rows of emp table where salary is more than 2500
SELECT 
    *
FROM
    emp.emp
WHERE
    sal > 2500;

-- HR Database - SORT FILTER: Exercises
--------------------------------------------------------
-- find those employees whose salaries are less than 6000. Return full name (first and last name), and salary.
SELECT 
    first_name, last_name, salary
FROM
    employees
WHERE
    salary < 6000;
-- find those employees whose salary is higher than 8000. Return first name, last name and department number and salary.
-- find those employees whose last name is "McEwen". Return first name, last name and department ID.
-- identify employees who do not have a department number. 
-- find the details of 'Marketing' department. Return all fields.
-- find those employees who earn between 8000 and 12000 (Begin and end values are included.) and get some commission
-- find those employees who do not earn any commission. Return full name (first and last name), and salary.
-- find the employees whose salary is in the range 9000,17000 (Begin and end values are included). Return full name, contact details and salary.
-- find those employees whose salaries are not between 7000 and 15000 (Begin and end values are included). Sort the result-set in ascending order by the full name (first and last). Return full name and salary.
-- find those employees who were hired between November 5th, 2007 and July 5th, 2009. Return full name (first and last), job id and hire date.
-- find those employees who work either in department 70 or 90. Return full name (first and last name), department id.
-- find those employees who work under a manager. Return full name (first and last name), salary, and manager ID.
-- find the employees who were hired before June 21st, 2002
-- find the employees whose managers hold the ID 120, 103, or 145. Return first name, last name, email, salary and manager ID.
-- find the employees whose department numbers are included in 30, 40, or 90

