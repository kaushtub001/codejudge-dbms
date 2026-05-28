-- Query 1
-- List all active students with student ID, name, email, batch, and admission date

SELECT
student_id,
full_name,
email,
batch_id,
admission_date
FROM students
WHERE enrollment_status = 'active';


-- Query 2
-- Find students whose email is missing or invalid

SELECT
student_id,
full_name,
email
FROM students
WHERE email IS NULL
OR email NOT LIKE '%@%';


-- Query 3
-- List all problems with Easy or Medium difficulty

SELECT
problem_id,
title,
difficulty,
max_score
FROM problems
WHERE difficulty IN ('Easy', 'Medium');


-- Query 4
-- Display latest 20 submissions based on submission timestamp

SELECT
submission_id,
student_id,
problem_id,
language,
submitted_at,
status,
score
FROM submissions
ORDER BY submitted_at DESC
LIMIT 20;


-- Query 5
-- Find submissions where the status is not successful

SELECT
submission_id,
student_id,
problem_id,
status,
score,
submitted_at
FROM submissions
WHERE status != 'Accepted';


-- Query 6
-- Display student name, batch program, and enrollment status

SELECT
s.student_id,
s.full_name,
b.program,
s.enrollment_status
FROM students s
JOIN batches b
ON s.batch_id = b.batch_id;


-- Query 7
-- Show student name along with enrolled course title

SELECT
s.student_id,
s.full_name,
c.course_title,
e.enrollment_status
FROM enrollments e
JOIN students s
ON e.student_id = s.student_id
JOIN courses c
ON e.course_id = c.course_id;


-- Query 8
-- Count total enrollments for each course

SELECT
c.course_id,
c.course_title,
COUNT(e.enrollment_id) AS total_enrollments
FROM courses c
LEFT JOIN enrollments e
ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_title
ORDER BY total_enrollments DESC;



-- Query 9
-- Find average score for each problem

SELECT
p.problem_id,
p.title,
ROUND(AVG(s.score), 2) AS average_score
FROM problems p
LEFT JOIN submissions s
ON p.problem_id = s.problem_id
GROUP BY p.problem_id, p.title
ORDER BY average_score DESC;


-- Query 10
-- Find students who submitted more than 5 solutions

SELECT
s.student_id,
s.full_name,
COUNT(sub.submission_id) AS total_submissions
FROM students s
JOIN submissions sub
ON s.student_id = sub.student_id
GROUP BY s.student_id, s.full_name
HAVING COUNT(sub.submission_id) > 5
ORDER BY total_submissions DESC;

