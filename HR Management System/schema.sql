CREATE DATABASE HR_management_system_db;

USE HR_management_system_db;

CREATE TABLE Departments (
  dept_id INT AUTO_INCREMENT PRIMARY KEY,
  dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
  emp_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  dept_id INT,
  manager_id INT,
  join_date DATE,
  FOREIGN KEY (dept_id) REFERENCES Departments(dept_id),
  FOREIGN KEY (manager_id) REFERENCES Employees(emp_id)
);

CREATE TABLE Salaries (
  salary_id INT AUTO_INCREMENT PRIMARY KEY,
  emp_id INT,
  amount DECIMAL(10,2),
  start_date DATE,
  end_date DATE,
  FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);
