# T05 Exercise — Status and Diff

Edit the committed `notes/git-notes.md` and add one paragraph.

Before staging:

```text
git status
git diff
```

Read the diff.

Stage:

```text
git add notes/git-notes.md
```

Now compare:

```text
git diff
git diff --staged
git status
```

Explain why ordinary `git diff` changes after staging and what `git diff --staged` shows.

Commit:

```text
git commit -m "Expand Git learning notes"
git log --oneline
```
