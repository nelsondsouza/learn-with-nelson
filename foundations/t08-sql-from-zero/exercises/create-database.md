# T08 Exercise — Create the Learning Database

Create:

```text
sql-learning-project/
├── data/
└── sql/
```

Create `sql/setup.sql` containing:

```sql
DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    city TEXT,
    age INTEGER,
    score REAL,
    email TEXT
);

INSERT INTO students (id, name, city, age, score, email) VALUES
(1, 'Aisha', 'Kuwait City', 22, 88.5, 'aisha@example.com'),
(2, 'Omar', 'Doha', 25, 91.0, NULL),
(3, 'Lina', 'Dubai', 21, 84.0, 'lina@example.com'),
(4, 'Yousef', 'Kuwait City', 28, 95.5, NULL),
(5, 'Maya', 'Dubai', 24, 89.0, 'maya@example.com'),
(6, 'Rami', 'Doha', 23, 76.5, 'rami@example.com');
```

From the project root:

```text
sqlite3 data/learning.db < sql/setup.sql
```

Then open:

```text
sqlite3 data/learning.db
```

Inside the shell:

```text
.tables
```

Then:

```sql
SELECT *
FROM students;
```

Questions:

1. What is stored in `learning.db`?
2. What does `setup.sql` contain?
3. Why is it useful to keep SQL source for reproducibility?
