# Normalization Notes

## First Normal Form (1NF)

The database tables follow First Normal Form because:

- Each column contains atomic values.
- No multiple values are stored in a single column.
- No repeating groups are present.

Example:

- email stores only one value per student.
- course_title stores only one course name.

---

## Second Normal Form (2NF)

The database follows Second Normal Form because:

- All tables are already in 1NF.
- Non-key attributes depend fully on the primary key.
- No partial dependency exists.

Example:

- In enrollments, enrollment_status depends on enrollment_id.
- In students, full_name depends completely on student_id.

---

## Third Normal Form (3NF)

The database follows Third Normal Form because:

- No transitive dependency exists.
- Related information is separated into different tables.

Examples:

- Batch details are stored in batches table instead of students table.
- Course details are stored in courses table instead of enrollments table.

This reduces redundancy and improves data consistency.

---

## Redundancy Reduction

The schema minimizes duplicate data by:

- Separating students and batches
- Separating courses and enrollments
- Using foreign keys for relationships

---

## Many-to-Many Relationship Resolution

Students and courses have a many-to-many relationship because:

- One student can enroll in many courses
- One course can contain many students

This relationship is resolved using the enrollments table.

---

## Data Integrity Benefits

Normalization improves:

- consistency
- maintainability
- scalability
- update reliability
- reduced data duplication
