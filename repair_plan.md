# Repair Plan

## Issue 1: Missing Student Email

Problem:

- Student S0005 has NULL email value.

Repair Action:

- Move record to staging review table OR request corrected email from source system.

Reason:

- Email is an important communication and identification attribute.

---

## Issue 2: Invalid Email Format

Problem:

- Student S0018 contains invalid email format.

Repair Action:

- Correct email format after manual verification.

Reason:

- Invalid email breaks communication workflows and validation rules.

---

## Issue 3: Duplicate Submission IDs

Problem:

- Submission ID SUB000701 appears multiple times.

Repair Action:

- Generate new unique submission ID for duplicate records.

Reason:

- Primary keys must remain unique for reliable identification.

---

## Issue 4: Missing Foreign Key References

Problem:

- Some students reference non-existing batches such as B999.
- Some submissions reference missing students or problems.

Repair Action:

- Move invalid records into staging tables for manual review.

Reason:

- Broken foreign key relationships reduce relational integrity.

---

## Issue 5: Invalid Programming Language

Problem:

- Submission records contain unsupported language values like Go.

Repair Action:

- Extend allowed language domain OR normalize invalid values.

Reason:

- Domain consistency is required for analytics and reporting.

---

## Issue 6: Invalid Submission Status

Problem:

- Some submissions contain unsupported status values like Compilation Error.

Repair Action:

- Map invalid statuses into standardized status categories.

Reason:

- Consistent status values improve reporting accuracy.

---

## Safe Repair Strategy

- Never directly modify original raw CSV files.
- Create staging/backup tables before repairs.
- Preserve original records for audit history.
- Validate repaired data after modification.
