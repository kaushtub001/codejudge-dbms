-- Domain and Rule Validation Queries

---

## -- Negative scores

SELECT *
FROM submissions
WHERE score < 0;

---

## -- Scores greater than maximum allowed score

SELECT
s.submission_id,
s.score,
p.max_score
FROM submissions s
JOIN problems p
ON s.problem_id = p.problem_id
WHERE s.score > p.max_score;

---

## -- Invalid difficulty values

SELECT *
FROM problems
WHERE difficulty NOT IN ('Easy', 'Medium', 'Hard');

---

## -- Invalid submission statuses

SELECT *
FROM submissions
WHERE status NOT IN (
'Accepted',
'Wrong Answer',
'Runtime Error',
'Time Limit Exceeded'
);

---

## -- Invalid programming languages

SELECT *
FROM submissions
WHERE language NOT IN (
'Python',
'Java',
'C++',
'JavaScript',
'C'
);

---

## -- NULL mandatory student fields

SELECT *
FROM students
WHERE full_name IS NULL
OR roll_number IS NULL;

---

## -- Invalid email format

SELECT *
FROM students
WHERE email NOT LIKE '%@%';

---

## -- Invalid active flag values

SELECT *
FROM problems
WHERE is_active NOT IN (0, 1);
