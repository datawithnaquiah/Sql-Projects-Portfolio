USE HR_management_system_db;

-- Show all employees with department names
SELECT e.name, d.dept_name
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id;

-- Find all managers and their subordinates
SELECT m.name AS Manager, e.name AS Employee
FROM Employees e 
JOIN Employees m ON m.manager_id= e.emp_id;

-- Count employees per department
SELECT d.dept_name, COUNT(e.emp_id) AS total_employees
FROM Employees e
RIGHT JOIN Departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

--  Highest salary per department
SELECT d.dept_name, MAX(s.amount) AS highest_salary
FROM Salaries s
JOIN Employees e ON s.emp_id = e.emp_id
JOIN Departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;
-- no need ORDER BY, no need sorting because its only need highest one from each department

-- Average salary by department
SELECT d.dept_name, AVG(s.amount) AS avg_salary
FROM Salaries s
JOIN Employees e ON s.emp_id = e.emp_id
JOIN Departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Employees without managers
SELECT name FROM Employees WHERE manager_id IS NULL;

-- Total payroll
SELECT SUM(amount) AS total_payroll
FROM Salaries;

-- Employees hired this year
SELECT * FROM Employees
WHERE YEAR(join_date) = YEAR(curdate());

-- Employees hired last
SELECT * FROM Employees
ORDER BY join_date;

-- Salary history of an employee
SELECT * FROM Salaries WHERE emp_id = 1;

-- Employees who earn more than company average
SELECT e.name, s.amount FROM Salaries s
JOIN Employees e ON s.emp_id = e.emp_id
WHERE s.amount > (SELECT AVG(amount) FROM Salaries);

-- Employees with no salary record
SELECT e.name FROM Employees e
LEFT JOIN Salaries s ON e.emp_id = s.emp_id
WHERE s.salary_id IS NULL;
-- if there is no any return, means no data missing

-- Department with highest total salary
SELECT d.dept_name, SUM(s.amount) AS total_salary
FROM Salaries s
JOIN Employees e ON s.emp_id = e.emp_id
JOIN Departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY total_salary DESC
LIMIT 1;

-- Create view: employee_salary_view
CREATE VIEW employee_salary_view AS
SELECT e.name, d.dept_name, s.amount
FROM Employees e
JOIN Salaries s ON e.emp_id = s.emp_id
JOIN Departments d ON e.dept_id = d.dept_id;

-- Promote all Engineering employees by 10% salary (test)
BEGIN;

UPDATE Salaries
SET amount = amount * 1.10
WHERE emp_id IN (
  SELECT emp_id FROM Employees WHERE dept_id = 2
);
ROLLBACK;

SELECT * FROM Salaries;

-- Delete employees with no department
DELETE FROM Employees WHERE dept_id IS NULL;

SELECT * FROM Employees;









