CREATE TABLE batches (
batch_id TEXT PRIMARY KEY,
batch_code TEXT NOT NULL,
program TEXT NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
batch_status TEXT NOT NULL
);

CREATE TABLE students (
student_id TEXT PRIMARY KEY,
roll_number TEXT NOT NULL,
full_name TEXT NOT NULL,
email TEXT NOT NULL,
batch_id TEXT,
admission_date DATE NOT NULL,
enrollment_status TEXT NOT NULL,
graduation_year INTEGER,
FOREIGN KEY (batch_id) REFERENCES batches(batch_id)
);

CREATE TABLE courses (
course_id TEXT PRIMARY KEY,
course_code TEXT NOT NULL,
course_title TEXT NOT NULL,
course_status TEXT NOT NULL,
credit_hours INTEGER NOT NULL
);

CREATE TABLE enrollments (
enrollment_id TEXT PRIMARY KEY,
student_id TEXT NOT NULL,
course_id TEXT NOT NULL,
enrolled_on DATE NOT NULL,
enrollment_status TEXT NOT NULL,
final_grade TEXT,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE problems (
problem_id TEXT PRIMARY KEY,
course_id TEXT NOT NULL,
problem_code TEXT NOT NULL,
title TEXT NOT NULL,
difficulty TEXT NOT NULL,
max_score INTEGER NOT NULL,
created_at DATE NOT NULL,
is_active INTEGER NOT NULL,
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE submissions (
submission_id TEXT,
student_id TEXT NOT NULL,
problem_id TEXT NOT NULL,
contest_id TEXT,
language TEXT NOT NULL,
submitted_at DATETIME NOT NULL,
status TEXT NOT NULL,
score INTEGER,
runtime_ms INTEGER,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (problem_id) REFERENCES problems(problem_id)
);
