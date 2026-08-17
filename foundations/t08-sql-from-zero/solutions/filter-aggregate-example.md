# T08 — Filtering and Aggregate Examples

```sql
SELECT *
FROM students
WHERE age >= 24;

SELECT *
FROM students
WHERE score > 90;

SELECT *
FROM students
WHERE city = 'Dubai';

SELECT *
FROM students
WHERE city = 'Dubai' OR city = 'Doha';

SELECT *
FROM students
WHERE age >= 22 AND score >= 90;

SELECT name, score
FROM students
ORDER BY score DESC
LIMIT 3;

SELECT COUNT(*)
FROM students;

SELECT AVG(score)
FROM students;

SELECT MIN(score), MAX(score)
FROM students;
```
