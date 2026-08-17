# T05 Exercise — Restore Practice

Use only the T05 practice repository.

Edit `README.md` and add:

```text
THIS IS TEMPORARY
```

Inspect:

```text
git status
git diff
```

Discard only that unstaged edit:

```text
git restore README.md
```

Verify the line is gone.

Now add a useful sentence, stage it, then unstage it:

```text
git add README.md
git status
git restore --staged README.md
git status
git diff
```

Verify the useful edit remains in the working tree.

Explain the difference between `git restore README.md` and `git restore --staged README.md`.
