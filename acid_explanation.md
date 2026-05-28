# ACID Property Explanation

## Atomicity

Atomicity ensures that all operations inside a transaction are completed successfully or none are applied.

Example:

- In Transaction 2, the email update was rolled back completely using ROLLBACK.

---

## Consistency

Consistency ensures the database remains valid before and after a transaction.

Example:

- Enrollment inserts maintain proper student and course relationships.

---

## Isolation

Isolation ensures one transaction does not interfere with another transaction.

Example:

- SAVEPOINT operations isolate partial updates safely during testing.

---

## Durability

Durability ensures committed changes remain permanently stored.

Example:

- Transaction 1 used COMMIT to permanently save enrollment insertion.
