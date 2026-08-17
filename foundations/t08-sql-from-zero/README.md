# T08 — SQL from Zero

T08 is the first database tutorial in Learn with Nelson.

The goal is to help a complete beginner understand what a database is, what tables/rows/columns are, and how SQL queries retrieve and summarize structured data.

We use **SQLite** because it is lightweight, local, and does not require a separate database server for this tutorial.

## Prerequisites

Complete:

- [T00 — How to Start Learning Tech](../../start-here/t00-how-to-start-learning-tech/)
- [T01 — How Computers Work](../t01-how-computers-work/)
- [T02 — Files, Folders & Paths](../t02-files-folders-paths/)
- [T03 — Command Line from Zero](../t03-command-line-from-zero/)
- [T04 — VS Code from Zero](../t04-vscode-from-zero/)
- [T05 — Git from Zero](../t05-git-from-zero/)
- [T06 — GitHub from Zero](../t06-github-from-zero/)
- [T07 — Python from Zero](../t07-python-from-zero/)

## Learning goals

By the end of T08, you should understand and use:

- data
- structured data
- databases
- relational databases
- tables
- rows
- columns
- SQL
- SQLite
- SQLite database files
- the `sqlite3` CLI
- `.sql` files
- `SELECT`
- `FROM`
- `WHERE`
- `ORDER BY`
- `LIMIT`
- `DISTINCT`
- aliases with `AS`
- comparison operators
- `AND`, `OR`, `NOT`
- `NULL`
- `IS NULL`
- `IS NOT NULL`
- simple arithmetic expressions
- `COUNT`
- `SUM`
- `AVG`
- `MIN`
- `MAX`
- reading simple SQL errors
- running SQL from the SQLite CLI
- saving queries in VS Code
- Git + GitHub for SQL projects
- safe AI-assisted SQL learning

## Deliberately not covered yet

T08 does not yet cover:

- joins
- `GROUP BY`
- `HAVING`
- subqueries
- common table expressions
- window functions
- transactions
- schema design in depth
- indexes
- permissions
- database servers
- PostgreSQL/MySQL administration

Those come later.

## What is SQL?

SQL stands for **Structured Query Language**.

SQL is used to work with relational data.

For T08, the core mental model is:

```text
Database
  ↓
Table
  ↓
Rows + Columns
  ↓
SQL Query
  ↓
Result
```

## Why SQLite?

SQLite is an embedded relational database engine.

A SQLite database can live in a single file such as:

```text
learning.db
```

The official SQLite project provides a command-line program named:

```text
sqlite3
```

which can open a database and run SQL statements.

## Install SQLite

Use official SQLite guidance:

https://sqlite.org/download.html

The command-line documentation is:

https://sqlite.org/cli.html

### Windows

Download the current official precompiled command-line tools for your architecture from the SQLite download page.

The bundle includes the `sqlite3.exe` command-line shell.

Place the tools somewhere sensible and make `sqlite3` available on PATH if you want to call it from any terminal.

### macOS / Linux

SQLite may already be installed.

Check:

```text
sqlite3 --version
```

If missing, use the official package-management guidance appropriate to your operating system/distribution.

Do not install a random VS Code extension instead of SQLite itself and assume you now have the database engine/CLI.

## Verify SQLite

Run:

```text
sqlite3 --version
```

Then create/open a database:

```text
sqlite3 learning.db
```

SQLite will open its interactive shell.

## SQLite shell vs SQL

Inside the SQLite CLI, you can enter SQL such as:

```sql
SELECT 1 + 1;
```

You may also encounter dot commands such as:

```text
.tables
.headers on
.mode column
.quit
```

These are SQLite CLI commands, not standard SQL.

Keep that distinction clear.

## Table mental model

Imagine:

```text
students
```

| id | name | city | age | score |
|---|---|---|---:|---:|
| 1 | Aisha | Kuwait City | 22 | 88.5 |
| 2 | Omar | Doha | 25 | 91.0 |
| 3 | Lina | Dubai | 21 | 84.0 |

Columns describe fields.

Rows represent records.

## SELECT

Retrieve columns:

```sql
SELECT name, city
FROM students;
```

Retrieve all columns:

```sql
SELECT *
FROM students;
```

Use `*` carefully in larger real systems; for learning it is useful.

## WHERE

Filter rows:

```sql
SELECT *
FROM students
WHERE age >= 22;
```

## Comparison operators

Common examples:

```text
=    equal
!=   not equal
<>   not equal
>    greater than
<    less than
>=   greater than or equal
<=   less than or equal
```

## AND / OR / NOT

```sql
SELECT *
FROM students
WHERE age >= 22 AND score >= 90;
```

```sql
SELECT *
FROM students
WHERE city = 'Dubai' OR city = 'Doha';
```

## ORDER BY

```sql
SELECT name, score
FROM students
ORDER BY score DESC;
```

Ascending:

```sql
ORDER BY score ASC;
```

## LIMIT

```sql
SELECT *
FROM students
LIMIT 3;
```

## DISTINCT

```sql
SELECT DISTINCT city
FROM students;
```

## Aliases

```sql
SELECT name AS student_name,
       score AS final_score
FROM students;
```

## NULL

`NULL` represents missing/unknown data in SQL contexts.

Do not compare it using:

```sql
= NULL
```

Instead:

```sql
WHERE email IS NULL
```

or:

```sql
WHERE email IS NOT NULL
```

## Arithmetic expressions

```sql
SELECT name,
       score,
       score + 5 AS adjusted_score
FROM students;
```

## Aggregate functions

Count rows:

```sql
SELECT COUNT(*)
FROM students;
```

Sum:

```sql
SELECT SUM(score)
FROM students;
```

Average:

```sql
SELECT AVG(score)
FROM students;
```

Minimum and maximum:

```sql
SELECT MIN(score), MAX(score)
FROM students;
```

T08 uses aggregate functions without introducing grouping yet.

## Query execution mental model

```text
Write query
   ↓
Database engine parses it
   ↓
Find/filter requested data
   ↓
Produce result set
```

See [query-flow.mmd](diagrams/query-flow.mmd).

## SQL formatting

These can both work:

```sql
SELECT name FROM students WHERE age >= 22;
```

and:

```sql
SELECT name
FROM students
WHERE age >= 22;
```

The second is often easier to read.

SQL keywords are commonly written uppercase by convention.

## Strings in SQL

String literals typically use single quotes:

```sql
WHERE city = 'Dubai'
```

Do not confuse SQL strings with Python syntax habits.

## Semicolon

A semicolon commonly terminates a SQL statement:

```sql
SELECT *
FROM students;
```

In interactive tools, forgetting it may leave the statement incomplete.

## SQL errors

Common beginner causes:

- misspelled table name
- misspelled column name
- missing quote
- missing comma
- missing semicolon in interactive use
- wrong operator
- using `= NULL`
- querying a table that does not exist

Read the error message and inspect the query rather than rewriting everything.

## Project structure

```text
sql-learning-project/
├── README.md
├── data/
│   └── learning.db
├── sql/
│   ├── setup.sql
│   └── queries.sql
└── .gitignore
```

The SQLite database file can be generated from `setup.sql`.

For a learning repository, it can be useful to keep the SQL source that creates sample data rather than relying only on a binary database file.

## Practice

Complete:

- [Install and Verify SQLite](exercises/install-and-verify.md)
- [Create the Learning Database](exercises/create-database.md)
- [SELECT Basics](exercises/select-basics.md)
- [Filtering and Sorting](exercises/filter-sort.md)
- [NULL and Expressions](exercises/null-and-expressions.md)
- [Aggregate Functions](exercises/aggregates.md)
- [Read the SQL Error](exercises/read-the-error.md)
- [Git and GitHub Workflow](exercises/git-and-github.md)
- [Mini Challenge](exercises/mini-challenge.md)

## Next

**T09 — Excel from Zero**
