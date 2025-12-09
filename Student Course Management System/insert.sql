USE SCM_System_db;

INSERT INTO Students (name, email, major) VALUES
('Riya Sharma', 'riya@univ.edu', 'Computer Science'),
('Ethan Lee', 'ethan@univ.edu', 'Physics');

INSERT INTO Courses (title, credits) VALUES
('Data Structures', 3),
('Quantum Mechanics', 4);

INSERT INTO Enrollments (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(2, 2, 'B');

INSERT INTO Attendance (student_id, course_id, attendance_date, status) VALUES
(1, 1, '2024-09-01', 'Present'),
(1, 1, '2024-09-02', 'Absent'),
(2, 2, '2024-09-01', 'Present');