# Reliability Incident Note

## Incident Description

A developer accidentally executed an UPDATE query without a WHERE clause on the submissions table.

Example risky query:

UPDATE submissions
SET status = 'Accepted';

---

## Potential Impact

- All submission statuses would become identical.
- Historical submission accuracy would be lost.
- Reporting and analytics would become unreliable.
- Evaluation correctness would be damaged.

---

## Recovery Strategy

The issue can be recovered using:

- transaction rollback
- backup tables
- staging tables
- point-in-time recovery

---

## Preventive Measures

- Always verify rows using SELECT before UPDATE.
- Always use WHERE conditions.
- Use transactions during risky modifications.
- Maintain backup tables before repairs.
- Review queries before execution.

---

## Assignment Relevance

This incident demonstrates why safe transaction handling and rollback mechanisms are critical in database systems.
