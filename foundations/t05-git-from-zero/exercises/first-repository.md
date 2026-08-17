# T05 Exercise — Your First Repository

Create and enter `git-learning-project`.

```text
git init -b main
git status
```

Create `README.md`:

```markdown
# Git Learning Project

I am learning Git from zero.
```

Run `git status` and identify its state.

Stage:

```text
git add README.md
git status
```

Commit:

```text
git commit -m "Create project README"
git status
git log --oneline
```

Locate the hidden `.git/` directory if your tools show hidden items. Do not edit it.
