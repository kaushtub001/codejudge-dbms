-- Transaction Scenarios

---

## -- Transaction 1: Successful Enrollment Insert

BEGIN TRANSACTION;

INSERT INTO enrollments (
enrollment_id,
student_id,
course_id,
enrolled_on,
enrollment_status,
final_grade
)
VALUES (
'E99999',
'S0001',
'C001',
'2025-05-28',
'active',
NULL
);

COMMIT;

---

## -- Transaction 2: Rollback Example

BEGIN TRANSACTION;

UPDATE students
SET email = NULL
WHERE student_id = 'S0002';

ROLLBACK;

---

## -- Transaction 3: SAVEPOINT Example

BEGIN TRANSACTION;

SAVEPOINT before_language_fix;

UPDATE submissions
SET language = 'Python'
WHERE submission_id = 'SUB000001';

ROLLBACK TO before_language_fix;

COMMIT;
