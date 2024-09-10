/*1. Basic Table Creation
Question: Write an SQL query to create a table Employees with the following columns:
		employee_id (Primary Key, Integer, Auto Increment)
		first_name (String, 50 characters)
		last_name (String, 50 characters)
		birth_date (Date)
		hire_date (Date)
		salary (Decimal with 10 total digits and 2 decimal places)
Follow-up: Add a constraint that the salary should be greater than or equal to 1000.
*/

/* 2. One-to-One Relationship 
Question: Create two tables Users and Addresses with a one-to-one relationship. 
		The Users table should store the following columns:
			user_id (Primary Key, Integer, Auto Increment)
			username (String, 50 characters, Unique)
			email (String, 100 characters, Unique)
			password (String, 255 characters)
			created_at (Timestamp, default to the current timestamp)
		The Addresses table should store the following columns:
			address_id (Primary Key, Integer, Auto Increment)
			user_id (Foreign Key from Users table)
			street_address (String, 100 characters)
			city (String, 50 characters)
			postal_code (String, 10 characters)
Follow-up: Ensure that the user_id in the Addresses table is unique to maintain the one-to-one relationship.
*/

/* 3. One-to-Many Relationship
Question: Write an SQL query to create two tables: Customers and Orders, where:
	A customer can have multiple orders, but each order belongs to only one customer.
	The Customers table has customer_id, first_name, and last_name.
	The Orders table has order_id, order_date, and customer_id (foreign key referencing customer_id in the Customers table).
Follow-up: Add an index to the customer_id column in the Orders table to optimize query performance.
*/

/* 4. Many-to-Many Relationship
Question: Create a many-to-many relationship between Students and Courses. Write an SQL query to:
	Create the Students table with student_id, first_name, and last_name.
	Create the Courses table with course_id and course_name.
	Create a junction table Enrollments that links students and courses. Ensure that no duplicate enrollments are allowed.
Follow-up: Ensure that Enrollments contains the enrollment date.
*/

/* 5. Constraints on Foreign Keys
Question: Create two tables: Departments and Employees, where:
	The Employees table has a foreign key department_id that references the Departments table.
	The Departments table has columns department_id (Primary Key) and department_name.
Follow-up: Add a constraint that ensures the deletion of a department will also delete all associated employees.
*/
