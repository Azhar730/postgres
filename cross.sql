-- Active: 1748704629501@@127.0.0.1@5432@ph
CREATE Table employees (
    emp_id INT,
    emp_name VARCHAR(25),
    dept_id INT
)

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(25)
)

-- Insert data into employees table
INSERT INTO employees (emp_id, emp_name, dept_id)
VALUES 
(101, 'Alice Johnson', 1),
(102, 'Bob Smith', 2);


-- Insert data into departments table
INSERT INTO departments (dept_id, dept_name)
VALUES 
(1, 'Human Resources'),
(2, 'Engineering');

SELECT * from employees

SELECT * from departments

SELECT * FROM employees
    CROSS JOIN departments

SELECT * from employees
    NATURAL JOIN departments