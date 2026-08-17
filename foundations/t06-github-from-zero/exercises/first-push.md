# T06 Exercise — First Push

Before pushing:

```text
git status
git log --oneline
git remote -v
```

Then:

```text
git push -u origin main
```

Complete authentication using a supported GitHub method. Do not use your normal GitHub account password as a Git-over-HTTPS password.

Refresh GitHub and verify files, README, history, and `main`.

Then edit README locally and run:

```text
git status
git diff
git add README.md
git commit -m "Update project README"
git push
```

Explain why the second push usually does not need `-u origin main`.
