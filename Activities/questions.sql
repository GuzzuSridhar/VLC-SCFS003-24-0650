-- Write a SQL statement to display a string "This is SQL Exercise". 
-- Write a SQL query to display three numbers in three columns. 
-- Write a SQL query to display the sum of two numbers 10 and 15
-- write a query to evaluate any arithmetic  expression (10+20*70+20/10)


-- Using emp schema 
----------------------------------------------------------
--  display all employee names 
--  display all the columns and rows of emp table
--  display employees working in department number 10
--  display all the columns and rows of emp table where salary is more than 2500

-- HR Database - SORT FILTER: Exercises
--------------------------------------------------------
-- find those employees whose salaries are less than 6000. Return full name (first and last name), and salary.
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

-- using single-row functions on the HR database 
-----------------------------------------------------------
-- Convert the first name of all employees to uppercase.
-- Convert the last name of all employees to lowercase.
-- Find the length of each employee's full name (first name + last name)
-- Extract the first three characters of the job title for all employees.
-- Find the position of the letter 'a' in the department names.
-- Calculate the number of years each employee has been with the company.
-- Display the day of the week when each employee was hired.
-- Calculate the annual salary of all employees (assuming 12 months in a year).
-- Round the salaries of all employees to the nearest thousand.
-- Assign a performance rating based on the salary. (e.g., 'High' for salary > 10000, 'Medium' for 5000-10000, 'Low' for < 5000).
-- Remove any leading or trailing spaces from department names.
-- Pad the job title with asterisks (*) on the left to make it 20 characters long.
-- Display the hire date of employees in 'Month Day, Year' format
-- Replace 'Manager' with 'Lead' in all job titles.


-- Group By clause using the Northwind database
--------------------------------------------------------------
-- Total Number of Orders per Customer
-- Total Number of Orders by Each Employee
-- Average Freight Cost per Shipper
-- Number of Products in Each Category
-- Total Quantity of Products Ordered by Each Customer
-- Total Sales Amount by Each Product
-- Number of Employees in Each Title
-- Number of Orders Placed Each Year
-- Number of Orders Handled by Each Employee
-- Number of Products Supplied by Each Supplier

-- JOINS on HR Database
------------------------------
-- find the first name, last name, department number, and department name for each employee.
-- find the first name, last name, department, city, and state province for each employee.
-- find the first name, last name, salary, and job grade for all employees.
-- find all those employees who work in department ID 80 or 40. Return first name, last name, department number and department name.
-- find those employees whose first name contains the letter ‘z’. Return first name, last name, department, city, and state province.
-- find all departments, including those without employees. Return first name, last name, department ID, department name.
-- find the employees who earn less than the employee of ID 182. Return first name, last name and salary.
-- find the employees and their managers. Return the first name of the employee and manager.
-- display the department name, city, and state province for each department.
-- find out which employees have or do not have a department. Return first name, last name, department ID, department name.
-- find the employees and their managers. Those managers do not work under any manager also appear in the list. Return the first name of the employee and manager.
-- find the employees who work in the same department as the employee with the last name Taylor. Return first name, last name and department ID.
-- find all employees who joined on or after 1st January 1993 and on or before 31 August 1997. Return job title, department name, employee name, and joining date of the job.
-- calculate the difference between the maximum salary of the job and the employee's salary. Return job title, employee name, and salary difference.
-- calculate the average salary, the number of employees receiving commissions in that department. Return department name, average salary and number of employees.
-- calculate the difference between the maximum salary and the salary of all the employees who work in the department of ID 80. Return job title, employee name and salary difference.
-- find the name of the country, city, and departments, which are operational in those cities.
-- find the department name and the full name (first and last name) of the manager.
-- calculate the average salary of employees for each job title.
-- find the employees who earn $12000 or more. Return employee ID, starting date, end date, job ID and department ID.
-- find out which departments have at least two employees. Group the result set on country name and city.
-- calculate the number of days worked by employees in a department of ID 80
-- find full name (first and last name), and salary of all employees working in any department in the city of London.
-- find full name (first and last name), job title, start and end date of last jobs of employees who do not receive commissions.
-- find the department name, department ID, and number of employees in each department.
-- find out the full name (first and last name) of the employee with an ID and the name of the country where he/she is currently employed.

-- SUb queries on HR
-- -------------------------------------
-- find those employees who receive a higher salary than the employee with ID 163
-- find out which employees have the same designation as the employee whose ID is 169. 
-- find those employees who earn more than the average salary. 
-- find those employees who report to that manager whose first name is ‘Payam’.
-- find all those employees who work in the Finance department.
-- find the employee whose salary is 3000 and reporting person’s ID is 121
-- find those employees whose ID matches any of the numbers 134, 159 and 183
-- find those employees whose salary falls within the range of the smallest salary and 2500.
-- find those employees who do not work in the departments where managers’ IDs are between 100 and 200 (Begin and end values are included).
-- find those employees who get second-highest salary.
-- find those employees who work in the same department as ‘Clara’.
-- find those employees who work in a department where the employee’s first name contains the letter 'T'
-- find those employees who earn more than the average salary and work in the same department as an employee whose first name contains the letter 'J'.
-- find those employees whose department is located at ‘Toronto’.
-- find those employees whose salary is lower than that of employees whose job title is ‘MK_MAN’.




