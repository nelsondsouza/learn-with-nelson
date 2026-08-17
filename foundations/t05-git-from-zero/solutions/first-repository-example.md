# T05 — First Repository Example

```text
mkdir git-learning-project
cd git-learning-project
git init -b main
git status
```

Create `README.md`, then:

```text
git status
git add README.md
git status
git commit -m "Create project README"
git status
git log --oneline
```

Before `git add`, the new file is untracked. After `git add`, it is staged. After `git commit`, the staged snapshot becomes part of local history. GitHub is not involved.
