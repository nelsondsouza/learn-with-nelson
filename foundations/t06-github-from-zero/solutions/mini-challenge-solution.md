# T06 — Mini Challenge Example

```text
git init -b main
git add .
git commit -m "Create remote learning project"
git remote add origin YOUR-URL
git remote -v
git push -u origin main
```

After another local change:

```text
git status
git diff
git add notes/progress.md
git commit -m "Update learning progress"
git push
```

After a GitHub web edit:

```text
git status
git pull
git log --oneline
```

Then clone separately and inspect `git remote -v`.
