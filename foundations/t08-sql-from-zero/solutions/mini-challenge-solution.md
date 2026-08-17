# T08 — Mini Challenge Example

```sql
SELECT name, score
FROM students
ORDER BY score DESC
LIMIT 3;

SELECT *
FROM students
WHERE city = 'Kuwait City';

SELECT *
FROM students
WHERE age < 24;

SELECT *
FROM students
WHERE email IS NULL;

SELECT DISTINCT city
FROM students;

SELECT AVG(score) AS average_score
FROM students;

SELECT MAX(score) AS highest_score
FROM students;

SELECT COUNT(*) AS student_count
FROM students;

SELECT name,
       age,
       age + 1 AS next_age
FROM students;

SELECT name,
       score,
       score + 2 AS adjusted_score
FROM students;
```

This is one valid solution set. Understand each query rather than copying it.
