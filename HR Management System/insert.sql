USE HR_management_system_db;

INSERT INTO Departments (dept_name) VALUES
('Finance'),
('Engineering'),
('HR');

INSERT INTO Employees (name, dept_id, manager_id, join_date) VALUES
('Alice', 1, NULL, '2022-01-15'),
('Bob', 2, 1, '2022-03-01'),
('Carol', 2, 1, '2023-05-10');

INSERT INTO Salaries (emp_id, amount, start_date, end_date) VALUES
(1, 80000, '2022-01-15', NULL),
(2, 90000, '2022-03-01', NULL),
(3, 85000, '2023-05-10', NULL);