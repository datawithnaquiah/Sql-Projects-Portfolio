# Sql-Projects-Portfolio

# Data Analysis with SQL
Welcome to my collection of SQL projects!  
This portfolio highlights my skills in querying, data analysis, and database design.

## 📂 Projects
### Project Title: E-Commerse Store Database
This project simulates an online store system with products, customers, employees, and orders. Built using SQL.

### 📂 Project Files
- `schema.sql` — defines tables and constraints
- `inserts.sql` — populates sample data
- `queries.sql` — 15+ use-case queries
- `er-diagram.png` — visual layout

### 💡 Key Concepts Used
- Relational schema design
- Primary & foreign keys
- INNER/LEFT/RIGHT JOINs
- Aggregations & GROUP BY
- Subqueries & Views
- Indexes & performance tips

### 🚀 How to Run
1. Install MySQL / PostgreSQL
2. Run `schema.sql` in your SQL IDE (like DBeaver or MySQL Workbench)
3. Insert sample data using `inserts.sql`
4. Execute queries from `queries.sql`

### ✅ Output Examples
![Sample Screenshot](screenshot.png)

### 🧠 Try This
- Add a new customer with 3 orders
- Query: Total orders per region
- Optimize: Add index to `customer_id

### Project Title: HR Management System
This project simulates a realistic company Human Resources (HR) database designed to manage organizational structures, employee records, and compensation details. It provides a comprehensive schema that models how modern companies track and organize their workforce.

Objectives
- Create a normalized relational database for HR operations.
- Enable efficient queries for employee information, departmental structures, and salary management.
- Demonstrate advanced SQL techniques such as joins, constraints, indexing, and aggregate functions.

### 📂 Project Files
- `schema.sql` — defines tables and constraints
- `inserts.sql` — populates sample data
- `queries.sql` — 15+ use-case queries
- `er-diagram.png` — visual layout

### 💡 Key Concepts Used
- Relational schema design
- Primary & foreign keys
- INNER/LEFT/RIGHT JOINs
- Aggregations & GROUP BY
- Subqueries & Views

### 🚀 How to Run
1. Install MySQL / PostgreSQL
2. Run `schema.sql` in your SQL IDE (like DBeaver or MySQL Workbench)
3. Insert sample data using `inserts.sql`
4. Execute queries from `queries.sql`

### ✅ Output Examples
![Sample Screenshot](screenshot.png)

### 🧠 Try This
- Query: Average salary by department
SELECT d.dept_name, AVG(s.amount) AS avg_salary
FROM Salaries s
JOIN Employees e ON s.emp_id = e.emp_id
JOIN Departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

  ### Project Title: Student Course Management System
This project models a comprehensive SQL-based database system for managing academic operations in an educational institution. It provides a structured way to track students, their course enrollments, attendance records, and performance outcomes, ensuring efficient data organization and retrieval

Objective
- Design a normalized relational database schema for student and course management
- Enable queries to monitor student progress, attendance, and grades.
- Demonstrate SQL proficiency in joins, constraints, triggers, and aggregate function

### 📂 Project Files
- `schema.sql` — defines tables and constraints
- `inserts.sql` — populates sample data
- `queries.sql` — 15+ use-case queries
- `er-diagram.png` — visual layout

### 💡 Key Concepts Used
- Relational schema design
- Primary & foreign keys
- INNER/LEFT/RIGHT JOINs
- Aggregations & GROUP BY
- Subqueries & Views

### 🚀 How to Run
1. Install MySQL / PostgreSQL
2. Run `schema.sql` in your SQL IDE (like DBeaver or MySQL Workbench)
3. Insert sample data using `inserts.sql`
4. Execute queries from `queries.sql`

### ✅ Output Examples
![Sample Screenshot](screenshot.png)

### 🧠 Try This
- Query: Show grades for each student
SELECT s.name, c.title, e.grade
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;

