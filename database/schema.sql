CREATE TABLE batches (
batch_id TEXT PRIMARY KEY,
batch_code TEXT UNIQUE NOT NULL,
program TEXT NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
batch_status TEXT NOT NULL
);

CREATE TABLE students (
student_id TEXT PRIMARY KEY,
roll_number TEXT UNIQUE NOT NULL,
full_name TEXT NOT NULL,
email TEXT UNIQUE NOT NULL,
batch_id TEXT,
admission_date DATE NOT NULL,
enrollment_status TEXT NOT NULL,
graduation_year INTEGER,
FOREIGN KEY (batch_id) REFERENCES batches(batch_id)
);

CREATE TABLE courses (
course_id TEXT PRIMARY KEY,
course_code TEXT UNIQUE NOT NULL,
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