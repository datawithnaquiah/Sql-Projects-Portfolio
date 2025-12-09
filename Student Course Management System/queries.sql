USE SCM_System_db;

-- List all students enrolled in 'Data Structures'
SELECT s.name FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE c.title = 'Data Structures';

-- Count students per major
SELECT major, COUNT(*) AS student_count
FROM Students
GROUP BY major;

-- Show grades for each student
SELECT s.name, c.title, e.grade
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- Students who failed (grade 'F')
SELECT s.name FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
WHERE e.grade = 'F';

-- Attendance rate per student
SELECT s.name,
  SUM(CASE WHEN status = 'Present' THEN 1 ELSE 0 END) / COUNT(*) * 100 AS attendance_rate
FROM Attendance a
JOIN Students s ON a.student_id = s.student_id
GROUP BY s.name;

-- Students with perfect attendance
SELECT s.name
FROM Students s
JOIN Attendance a ON s.student_id = a.student_id
GROUP BY s.name
HAVING SUM(CASE WHEN status = 'Absent' THEN 1 ELSE 0 END) = 0;

-- Courses with no enrollments
SELECT title FROM Courses c
RIGHT JOIN Enrollments e ON c.course_id = e.course_id
WHERE e.course_id IS NULL;

-- Students in more than 1 course
SELECT student_id, COUNT(course_id) AS course_count
FROM Enrollments
GROUP BY student_id
HAVING COUNT(course_id) > 1;

-- Create view: student_grade_summary
CREATE VIEW student_grade_summary AS
SELECT s.name, c.title, e.grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- Attendance log for a specific course
SELECT s.name, a.attendance_date, a.status
FROM Attendance a
JOIN Students s ON a.student_id = s.student_id
WHERE a.course_id = 1;

-- Students with no attendance this month
SELECT s.name FROM Students s
LEFT JOIN Attendance a ON s.student_id = a.student_id
WHERE MONTH(a.attendance_date) != MONTH(CURDATE()) OR a.attendance_date IS NULL;

-- Most enrolled courses
SELECT c.title, COUNT(e.student_id) AS total_enrollments
FROM Enrollments e
JOIN Courses c ON e.course_id = c.course_id
GROUP BY c.title
ORDER BY total_enrollments DESC;

-- Delete enrollments with grade F (cleanup test)
BEGIN;
DELETE FROM Enrollments WHERE grade = 'F';

-- Students not enrolled in any course
SELECT s.name FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
WHERE e.course_id IS NULL;



