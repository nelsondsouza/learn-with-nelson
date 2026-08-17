# T05 — Git from Zero

Git gives your project a history.

Before Git, changing a file can turn into `README-old.md`, `README-final.md`, and `README-really-final.md`. Git gives you a better model: keep working files normally, inspect changes, select what belongs together, and record meaningful snapshots.

T05 teaches **local Git only**. You do not need a GitHub account. GitHub comes next in T06.

## Prerequisites

- [T00 — How to Start Learning Tech](../../start-here/t00-how-to-start-learning-tech/)
- [T01 — How Computers Work](../t01-how-computers-work/)
- [T02 — Files, Folders & Paths](../t02-files-folders-paths/)
- [T03 — Command Line from Zero](../t03-command-line-from-zero/)
- [T04 — VS Code from Zero](../t04-vscode-from-zero/)

## Learning goals

By the end of T05, you should understand and use version control, Git vs GitHub, repositories, the working tree, staging area/index, commits, `git init`, `.git`, `git status`, `git add`, `git commit`, `git log`, `git diff`, `git diff --staged`, `.gitignore`, `git restore`, `git restore --staged`, `HEAD`, `main`, basic branch concepts, and VS Code Source Control.

## Git vs GitHub

**Git** is a distributed version-control system that works locally.

**GitHub** is an online platform that can host Git repositories and add collaboration features.

T05 stays local. T06 connects local Git to GitHub.

See [git-vs-github.mmd](diagrams/git-vs-github.mmd).

## Install Git

Use the official site: https://git-scm.com/downloads

- Windows: use Git for Windows from the official site.
- macOS: use an official installation method described by Git.
- Linux: use the package manager for your actual distribution, following official guidance.

Restart terminal windows that were open during installation.

## Verify Git

```text
git --version
```

## Configure identity

Git records a name and email in commit metadata.

```text
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

Verify:

```text
git config --global user.name
git config --global user.email
```

`--global` applies to your user account. Repository-specific settings can override it later.

In T06 we will discuss GitHub-related email privacy choices.

## Repository

A **repository** or **repo** is a project Git tracks. A normal local repository contains your project files plus a hidden `.git` directory containing Git metadata and history information.

## Initialize a repository

Create and enter a safe practice directory named `git-learning-project`.

```text
git init -b main
```

This creates a local Git repository whose initial branch is named `main`.

Git creates a hidden `.git/` directory. Do not manually edit or delete it while learning.

## The three-area mental model

```text
Working Tree
    ↓ git add
Staging Area
    ↓ git commit
Repository History
```

See [git-three-areas.mmd](diagrams/git-three-areas.mmd).

The **working tree** contains files you edit. The **staging area** (also called the index) contains changes selected for the next commit. A **commit** records the staged snapshot in local repository history.

## Why staging exists

If you changed three files but only one change is ready, Git lets you stage and commit that change separately. This helps create focused history.

## `git status`

Use this constantly:

```text
git status
```

It reports branch and file states such as untracked, modified, and staged.

A strong habit: **inspect state before changing Git state**.

## Untracked → staged → committed

Create `README.md`, then:

```text
git status
git add README.md
git status
git commit -m "Create project README"
```

`git add` does not upload anything. T05 has no remote repository.

## Commit messages

Prefer messages that explain the change:

```text
Create project README
Add Git learning notes
Fix path example
```

Avoid vague messages such as `stuff` or `changes`.

## Basic workflow

```text
Edit
 ↓
git status
 ↓
git diff
 ↓
git add
 ↓
git status
 ↓
git diff --staged
 ↓
git commit
 ↓
git log
```

See [git-basic-workflow.mmd](diagrams/git-basic-workflow.mmd).

## File lifecycle

A common lifecycle is:

```text
Untracked → Staged → Committed → Modified → Staged → New commit
```

See [git-file-lifecycle.mmd](diagrams/git-file-lifecycle.mmd).

## Inspect changes

For unstaged tracked changes:

```text
git diff
```

For staged changes:

```text
git diff --staged
```

Read diffs before committing.

## View history

```text
git log
```

Compact view:

```text
git log --oneline
```

Commit IDs are hashes identifying commits. You do not need to memorize them.

## `HEAD` and `main`

At beginner level, think of `HEAD` as pointing to the branch/commit position you are currently working from. When you commit on `main`, `main` advances to the new commit and `HEAD` normally remains attached to `main`.

See [local-repository.mmd](diagrams/local-repository.mmd).

## Branches

A branch is a movable name pointing into commit history. For T05, understanding `main` is enough. Complex branch workflows come later.

## `.gitignore`

A `.gitignore` file defines patterns for untracked files Git should ignore.

Example:

```text
*.log
temporary.txt
```

Do not treat `.gitignore` as a secret vault. If a secret has already been committed, adding it to `.gitignore` does not erase it from history.

Never intentionally commit passwords, tokens, API keys, or private credentials.

## Restore an unstaged tracked file

Inspect first:

```text
git status
git diff
```

Then, for a practice file whose unstaged edit you truly want to discard:

```text
git restore README.md
```

This can discard work. Use it deliberately.

## Unstage while keeping the edit

If a file was staged too early:

```text
git restore --staged README.md
```

The edit remains in the working tree but is removed from the staging area.

## What Git does not automatically do

Git does not automatically upload to GitHub, save editor changes, decide what is correct, protect secrets you commit, or create good commit messages for you.

## VS Code Source Control

VS Code can show changed files, staged changes, diffs, and commit controls. Learn the terminal commands first so the UI reinforces the same model instead of becoming a second mysterious system.

## Deliberately excluded from T05

T05 does not require destructive/history-rewriting workflows such as aggressive `reset`, `clean`, rebasing, or force operations. Do not paste such commands as a generic fix without understanding their consequences.

## Practice

Complete all exercises under `exercises/`, then compare with `solutions/`.

## Next

**T06 — GitHub from Zero**

T05 gives your project local history. T06 gives that repository an online home.
