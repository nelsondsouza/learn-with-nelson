# T05 — Mini Challenge Example

A reasonable sequence is:

```text
git init -b main
```

Create README, inspect, stage, commit. Repeat separately for notes and source files.

Create `.gitignore` containing:

```text
*.log
```

Create `debug.log`, then check `git status`; the ignored file should not normally appear as untracked.

For a modified progress file:

```text
git status
git diff
git add notes/progress.md
git diff --staged
git restore --staged notes/progress.md
git status
git diff
```

The working edit remains but is no longer staged.

When ready:

```text
git add notes/progress.md
git commit -m "Update learning progress"
git log --oneline
```

Commit IDs differ in every repository.
