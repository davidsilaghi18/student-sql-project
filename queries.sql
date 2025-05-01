-- Select all students
SELECT * FROM students;

-- Select all grades with student names
SELECT s.name, g.subject, g.grade
FROM students s
JOIN grades g ON s.student_id = g.student_id;

-- Select students with grades above 90
SELECT s.name, g.subject, g.grade
FROM students s
JOIN grades g ON s.student_id = g.student_id
WHERE g.grade > 90;

-- Count how many grades each student has
SELECT s.name, COUNT(g.grade) AS total_grades
FROM students s
JOIN grades g ON s.student_id = g.student_id
GROUP BY s.name;

-- Average grade per student
SELECT s.name, AVG(g.grade) AS average_grade
FROM students s
JOIN grades g ON s.student_id = g.student_id
GROUP BY s.name;
