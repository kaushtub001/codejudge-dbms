# Assumptions

- Each student belongs to exactly one batch.
- Each batch can contain multiple students.
- Student emails are unique across the platform.
- Roll numbers are unique for every student.
- Each course has a unique course code.
- A student can enroll in multiple courses.
- A course can contain multiple students.
- Each enrollment record represents one student-course mapping.
- Final grades may remain NULL until evaluation is completed.
- Enrollment status values are assumed to be active, completed, dropped, or inactive.
- Batch status values are assumed to be active or completed.
- Course status values are assumed to be active or inactive.
- Date fields are assumed to follow YYYY-MM-DD format.
- Foreign key references are assumed to maintain referential integrity.
