-- Import Validation Queries

-- Count rows in students table
SELECT COUNT(*) AS total_students
FROM students;

-- Count rows in batches table
SELECT COUNT(*) AS total_batches
FROM batches;

-- Count rows in courses table
SELECT COUNT(*) AS total_courses
FROM courses;

-- Count rows in enrollments table
SELECT COUNT(*) AS total_enrollments
FROM enrollments;

-- Count rows in problems table
SELECT COUNT(*) AS total_problems
FROM problems;

-- Count rows in submissions table
SELECT COUNT(*) AS total_submissions
FROM submissions;

---

-- Check NULL emails in students

SELECT
student_id,
full_name
FROM students
WHERE email IS NULL
OR email = '';

---

-- Check invalid emails

SELECT
student_id,
email
FROM students
WHERE email NOT LIKE '%@%';

---

-- Check NULL enrollment status

SELECT *
FROM enrollments
WHERE enrollment_status IS NULL
OR enrollment_status = '';

---

-- Verify imported row counts match CSV expectation

SELECT 'students' AS table_name, COUNT(*) AS row_count
FROM students

UNION ALL

SELECT 'courses', COUNT(*)
FROM courses

UNION ALL

SELECT 'submissions', COUNT(*)
FROM submissions;
