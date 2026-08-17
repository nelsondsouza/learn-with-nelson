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
