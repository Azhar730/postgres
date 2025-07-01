-- Active: 1748704629501@@127.0.0.1@5432@ph

-- Simplifying complex queries
-- Improved security
-- Enhanced data abstraction

SELECT * from employees

CREATE VIEW dept_avg_salary
as
select department_name, avg(salary) from employees GROUP BY department_name

SELECT * from dept_avg_salary

CREATE VIEW test_view
AS
SELECT employee_name, salary, department_name
FROM employees
WHERE department_name IN
(SELECT department_name FROM employees WHERE department_name LIKE '%R%')

SELECT * FROM test_view