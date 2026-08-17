# T05 Mini Challenge — Build a Local Git History

Create:

```text
versioned-learning-project/
├── README.md
├── notes/
│   └── progress.md
├── src/
│   └── hello.txt
└── .gitignore
```

Initialize a local repository on `main`.

Create at least four meaningful commits:

```text
Create project README
Add progress notes
Add sample source file
Update learning progress
```

Also:

1. ignore `*.log` and create `debug.log`;
2. run `git status` before every commit;
3. use `git diff` before staging a modification;
4. use `git diff --staged` before at least one commit;
5. view `git log --oneline`;
6. stage one modified practice file;
7. unstage it using `git restore --staged`;
8. verify the edit remains;
9. commit it when ready.

Do not use GitHub, force, `reset --hard`, `clean`, rebase, or other history-rewriting commands.

Explain working tree, staging area, commit, repository, branch, and `HEAD` in your own words.
