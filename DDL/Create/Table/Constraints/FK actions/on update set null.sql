create schema if not exists ddl;
use ddl;

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT,
    department_name VARCHAR(255),
    PRIMARY KEY (department_id)
);

CREATE TABLE if not exists employees (
    employee_id INT AUTO_INCREMENT,
    name VARCHAR(255),
    department_id INT,
    PRIMARY KEY (employee_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
    ON UPDATE SET NULL
);

-- Insert into if not exists departments
INSERT INTO departments (department_name) 
VALUES 
('Human Resources'),
('Finance'),
('Marketing'),
('Sales'),
('IT');

-- Insert into employees
INSERT INTO employees (name, department_id) 
VALUES 
('Alice Johnson', 1),  
('Bob Smith', 2),      
('Charlie Davis', 3),  
('David Williams', 4), 
('Emily Clark', 5);  

-- Display records updating a  update department
SELECT * FROM departments;
SELECT * FROM employees;

-- Update department_id for Sales department
UPDATE departments 
SET department_id = 10 
WHERE department_id = 4;

-- Display records after updating  department
SELECT * FROM departments;
SELECT * FROM employees;