# ER Diagram

## Entity Relationship Structure

batches
|
|----< students
|
|----< enrollments >---- courses

---

## Relationship Details

### batches → students

Relationship Type:

- One-to-Many

Explanation:

- One batch can contain many students.
- Each student belongs to one batch.

---

### students → enrollments

Relationship Type:

- One-to-Many

Explanation:

- One student can have many enrollment records.
- Each enrollment belongs to one student.

---

### courses → enrollments

Relationship Type:

- One-to-Many

Explanation:

- One course can have many enrollments.
- Each enrollment belongs to one course.

---

### students ↔ courses

Relationship Type:

- Many-to-Many

Resolution:

- Resolved using enrollments bridge table.

Explanation:

- A student can enroll in many courses.
- A course can contain many students.
