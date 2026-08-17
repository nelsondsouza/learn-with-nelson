# T05 — Staging Example

If both `notes/git-notes.md` and `src/hello.txt` are new, then:

```text
git add notes/git-notes.md
```

should leave the notes file staged while `src/hello.txt` remains untracked.

A commit at this point records only staged content. This is why the staging area is useful: you can choose which changes belong in the next snapshot.
