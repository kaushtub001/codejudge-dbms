# Keys and Relationships

## students

Primary Key:

- student_id

Candidate Keys:

- roll_number
- email

Foreign Key:

- batch_id references batches(batch_id)

Relationship:

- One batch can contain many students.

---

## batches

Primary Key:

- batch_id

Candidate Key:

- batch_code

Relationship:

- One batch has many students.

---

## courses

Primary Key:

- course_id

Candidate Key:

- course_code

Relationship:

- One course can have many enrollments.

---

## enrollments

Primary Key:

- enrollment_id

Foreign Keys:

- student_id references students(student_id)
- course_id references courses(course_id)

Relationship:

- Acts as bridge table between students and courses.
- Resolves many-to-many relationship.

---

## Relationship Summary

- batches → students = One-to-Many
- students → enrollments = One-to-Many
- courses → enrollments = One-to-Many
- students ↔ courses = Many-to-Many (through enrollments)
