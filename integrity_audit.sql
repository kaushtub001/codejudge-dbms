-- Integrity Audit Queries

---

## -- Duplicate student roll numbers

SELECT
roll_number,
COUNT(*) AS duplicate_count
FROM students
GROUP BY roll_number
HAVING COUNT(*) > 1;

---

## -- Duplicate student emails

SELECT
email,
COUNT(*) AS duplicate_count
FROM students
GROUP BY email
HAVING COUNT(*) > 1;

---

## -- Duplicate course codes

SELECT
course_code,
COUNT(*) AS duplicate_count
FROM courses
GROUP BY course_code
HAVING COUNT(*) > 1;

---

## -- Duplicate submission IDs

SELECT
submission_id,
COUNT(*) AS duplicate_count
FROM submissions
GROUP BY submission_id
HAVING COUNT(*) > 1;

---

## -- Students linked to missing batches

SELECT
s.student_id,
s.batch_id
FROM students s
LEFT JOIN batches b
ON s.batch_id = b.batch_id
WHERE b.batch_id IS NULL;

---

## -- Enrollments linked to missing students

SELECT
e.enrollment_id,
e.student_id
FROM enrollments e
LEFT JOIN students s
ON e.student_id = s.student_id
WHERE s.student_id IS NULL;

---

## -- Enrollments linked to missing courses

SELECT
e.enrollment_id,
e.course_id
FROM enrollments e
LEFT JOIN courses c
ON e.course_id = c.course_id
WHERE c.course_id IS NULL;

---

## -- Problems linked to missing courses

SELECT
p.problem_id,
p.course_id
FROM problems p
LEFT JOIN courses c
ON p.course_id = c.course_id
WHERE c.course_id IS NULL;

---

## -- Submissions linked to missing students

SELECT
sub.submission_id,
sub.student_id
FROM submissions sub
LEFT JOIN students s
ON sub.student_id = s.student_id
WHERE s.student_id IS NULL;

---

## -- Submissions linked to missing problems

SELECT
sub.submission_id,
sub.problem_id
FROM submissions sub
LEFT JOIN problems p
ON sub.problem_id = p.problem_id
WHERE p.problem_id IS NULL;
