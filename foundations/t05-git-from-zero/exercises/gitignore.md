# T05 Exercise — `.gitignore`

Create `.gitignore` containing:

```text
*.log
temporary.txt
```

Create:

```text
debug.log
temporary.txt
keep-me.txt
```

Run:

```text
git status
```

Identify which files are ignored and which appear as untracked.

Explain why `.gitignore` should usually be committed and why it does not remove a secret that was already committed.

Stage and commit `.gitignore` and `keep-me.txt` with a meaningful message.
