-- Safe DELETE Operations

---

## -- Verify invalid batch references

SELECT *
FROM students
WHERE batch_id = 'B999';

---

## -- Delete invalid batch reference rows

DELETE FROM students
WHERE batch_id = 'B999';

---

## -- Verify deletion

SELECT *
FROM students
WHERE batch_id = 'B999';

---

## -- Verify invalid submission references

SELECT *
FROM submissions
WHERE student_id = 'S9999'
OR problem_id = 'P9999';

---

## -- Delete invalid submission references

DELETE FROM submissions
WHERE student_id = 'S9999'
OR problem_id = 'P9999';

---

## -- Verify deletion

SELECT *
FROM submissions
WHERE student_id = 'S9999'
OR problem_id = 'P9999';
