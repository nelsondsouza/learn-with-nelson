# T08 Exercise — Git and GitHub Workflow

Create:

```text
README.md
sql/setup.sql
sql/queries.sql
```

Store your practice queries in `queries.sql`.

Before staging:

```text
git status
git diff
```

Stage and inspect:

```text
git add README.md sql/setup.sql sql/queries.sql
git diff --staged
```

Commit with a meaningful message.

Push to GitHub.

Questions:

1. Why might SQL source files be more useful in Git than only a generated `.db` file?
2. Does pushing a SQL file automatically create a live database on GitHub?
3. What sensitive data should never be included in sample database files?
