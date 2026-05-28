-- Staging Repair Scripts

---

## -- Create backup table for students

CREATE TABLE students_backup AS
SELECT *
FROM students;

---

## -- Create backup table for submissions

CREATE TABLE submissions_backup AS
SELECT *
FROM submissions;

---

## -- Fix NULL student email

UPDATE students
SET email = '[unknown@codejudge.edu](mailto:unknown@codejudge.edu)'
WHERE student_id = 'S0005';

---

## -- Fix invalid email format

UPDATE students
SET email = '[anika.patel018@codejudge.edu](mailto:anika.patel018@codejudge.edu)'
WHERE student_id = 'S0018';

---

## -- Standardize invalid submission status

UPDATE submissions
SET status = 'Runtime Error'
WHERE status = 'Compilation Error';

---

## -- Replace unsupported programming language

UPDATE submissions
SET language = 'C++'
WHERE language = 'Go';

---

## -- Remove invalid batch references

DELETE FROM students
WHERE batch_id = 'B999';

---

## -- Remove invalid submission references

DELETE FROM submissions
WHERE student_id = 'S9999'
OR problem_id = 'P9999';

---

## -- Verification Queries

SELECT *
FROM students
WHERE email IS NULL
OR email NOT LIKE '%@%';

SELECT *
FROM submissions
WHERE language = 'Go';

SELECT *
FROM submissions
WHERE status = 'Compilation Error';
