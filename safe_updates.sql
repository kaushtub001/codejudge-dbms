-- Safe UPDATE Operations

---

## -- Verify invalid email before update

SELECT *
FROM students
WHERE student_id = 'S0018';

---

## -- Correct invalid email

UPDATE students
SET email = '[anika.patel018@codejudge.edu](mailto:anika.patel018@codejudge.edu)'
WHERE student_id = 'S0018';

---

## -- Verify update

SELECT *
FROM students
WHERE student_id = 'S0018';

---

## -- Verify NULL email before update

SELECT *
FROM students
WHERE student_id = 'S0005';

---

## -- Fix missing email

UPDATE students
SET email = '[unknown@codejudge.edu](mailto:unknown@codejudge.edu)'
WHERE student_id = 'S0005';

---

## -- Verify update

SELECT *
FROM students
WHERE student_id = 'S0005';

---

## -- Verify invalid status before update

SELECT *
FROM submissions
WHERE status = 'Compilation Error';

---

## -- Standardize invalid submission status

UPDATE submissions
SET status = 'Runtime Error'
WHERE status = 'Compilation Error';

---

## -- Verify update

SELECT *
FROM submissions
WHERE status = 'Compilation Error';

---

## -- Verify invalid language before update

SELECT *
FROM submissions
WHERE language = 'Go';

---

## -- Replace unsupported language

UPDATE submissions
SET language = 'C++'
WHERE language = 'Go';

---

## -- Verify update

SELECT *
FROM submissions
WHERE language = 'Go';
