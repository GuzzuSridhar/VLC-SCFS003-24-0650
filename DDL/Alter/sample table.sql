CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,   
    first_name VARCHAR(50) NOT NULL,             
    last_name VARCHAR(50) NOT NULL,              
    email VARCHAR(100) UNIQUE,                    
    hire_date DATE,                               
    salary DECIMAL(10, 2),                        
    department ENUM('HR', 'Finance', 'IT', 'Sales')
);