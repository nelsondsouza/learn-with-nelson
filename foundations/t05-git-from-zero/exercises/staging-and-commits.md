# T05 Exercise — Staging and Commits

Create:

```text
notes/git-notes.md
src/hello.txt
```

Add content to both and run `git status`.

Stage only:

```text
git add notes/git-notes.md
```

Run `git status` and identify what is staged versus untracked.

Commit:

```text
git commit -m "Add Git learning notes"
```

Then separately stage and commit `src/hello.txt`:

```text
git add src/hello.txt
git commit -m "Add sample source file"
```

Explain why focused commits can be clearer than one unrelated catch-all commit.
