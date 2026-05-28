# Schema Explanation

## batches

The batches table stores academic batch information for students.
Each batch represents a specific academic program and duration.

Important columns:

- batch_id → unique batch identifier
- batch_code → readable batch code
- program → academic program name
- start_date → batch start date
- end_date → batch end date
- batch_status → current status of batch

---

## students

The students table stores student information registered on the CodeJudge platform.

Important columns:

- student_id → unique student identifier
- roll_number → institution roll number
- full_name → student full name
- email → student email address
- batch_id → links student to a batch
- admission_date → admission date
- enrollment_status → active/inactive student status
- graduation_year → expected graduation year

Relationship:

- Many students belong to one batch.

---

## courses

The courses table stores available academic courses.

Important columns:

- course_id → unique course identifier
- course_code → unique course code
- course_title → course name
- course_status → active/inactive status
- credit_hours → academic credit value

---

## enrollments

The enrollments table stores enrollment records between students and courses.

Important columns:

- enrollment_id → unique enrollment identifier
- student_id → references students table
- course_id → references courses table
- enrolled_on → enrollment date
- enrollment_status → current enrollment state
- final_grade → final course grade

Relationship:

- Resolves many-to-many relationship between students and courses.
