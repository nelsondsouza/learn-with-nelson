# T06 — GitHub from Zero

T05 gave your project a local Git history. T06 gives that repository an online home.

This tutorial introduces GitHub, remote repositories, `origin`, authentication, `push`, `pull`, `clone`, repository visibility, and the local-to-remote workflow.

The key model is:

> **Local Git repository ↔ Remote GitHub repository**

## Prerequisites

- [T00 — How to Start Learning Tech](../../start-here/t00-how-to-start-learning-tech/)
- [T01 — How Computers Work](../t01-how-computers-work/)
- [T02 — Files, Folders & Paths](../t02-files-folders-paths/)
- [T03 — Command Line from Zero](../t03-command-line-from-zero/)
- [T04 — VS Code from Zero](../t04-vscode-from-zero/)
- [T05 — Git from Zero](../t05-git-from-zero/)

T05 is essential. You should already understand working tree, staging area, commits, `git status`, `git add`, `git commit`, and `git log`.

## Learning goals

You will learn GitHub, public/private repositories, local vs remote, `origin`, remote URLs, HTTPS vs SSH recognition, authentication, `git remote`, `git push`, upstream branches, `git pull`, `git fetch` recognition, `git clone`, README rendering, branches/history on GitHub, secrets, VS Code + GitHub basics, and safe AI assistance.

## Git vs GitHub

**Git** is the version-control system.

**GitHub** is an online platform that hosts Git repositories and collaboration features.

T05:

```text
Working Tree → Staging Area → Local Git Repository
```

T06 adds:

```text
Working Tree → Staging Area → Local Git Repository ↔ GitHub Repository
```

See [local-remote-model.mmd](diagrams/local-remote-model.mmd).

## GitHub account

Create or use an account at https://github.com/.

Choose a username carefully because it becomes part of repository URLs and your public identity. Use strong account security and enable two-factor authentication where appropriate.

Never store passwords, recovery codes, tokens, or private SSH keys in repositories.

## Public vs private repositories

A public repository is accessible to everyone on the internet. A private repository is limited to people with access.

Before making a repository public, review it for passwords, API keys, tokens, personal data, confidential files, proprietary material, and internal configuration.

## Create an empty GitHub repository

When connecting an existing local repository for the first time:

1. Create a new GitHub repository.
2. Choose owner and name.
3. Choose public or private deliberately.
4. Leave it empty for this exercise: no README, `.gitignore`, or license.

This avoids creating unrelated initial histories.

## Local vs remote

A local repository lives on your computer. A remote repository is another Git repository reachable through a URL. GitHub hosts remote repositories.

See [local-vs-remote.mmd](diagrams/local-vs-remote.mmd).

## `origin`

A remote has a local nickname. The common conventional name is:

```text
origin
```

`origin` is not GitHub itself. It is simply a local name pointing to a remote URL.

## Add a remote

HTTPS pattern:

```text
https://github.com/USERNAME/REPOSITORY.git
```

Connect it:

```text
git remote add origin https://github.com/USERNAME/REPOSITORY.git
```

Inspect:

```text
git remote -v
```

## Authentication

GitHub no longer supports using your account password for Git operations over HTTPS.

Beginner-friendly supported approaches include Git Credential Manager or GitHub CLI. Personal access tokens and SSH keys also exist for appropriate workflows.

Do not store credentials inside your repository.

## HTTPS vs SSH

HTTPS example:

```text
https://github.com/USERNAME/REPOSITORY.git
```

SSH example:

```text
git@github.com:USERNAME/REPOSITORY.git
```

T06 does not require mastery of SSH. Start with HTTPS unless you already have a reason to use SSH.

## Push

A local commit is not automatically on GitHub.

First push of local `main` to remote `origin`:

```text
git push -u origin main
```

`-u` records the upstream relationship. Future pushes can often be:

```text
git push
```

See [push-flow.mmd](diagrams/push-flow.mmd).

## Push does not stage or commit

The full flow remains:

```text
Edit → Save → git status → git add → git commit → git push
```

## Clone

When a repository already exists remotely and you want a local copy:

```text
git clone REPOSITORY-URL
```

Clone creates a local directory, downloads history, sets up a remote usually named `origin`, and checks out a working copy.

Do not run `git init` inside a freshly cloned repository.

See [clone-flow.mmd](diagrams/clone-flow.mmd).

## Pull

When the remote contains commits you do not have locally:

```text
git pull
```

At beginner level, think:

> Fetch remote changes and integrate them into the current branch.

Check `git status` before pulling.

## Fetch

You will also see:

```text
git fetch
```

At beginner level:

> Update your knowledge of remote history without automatically integrating it into the current branch.

## Push vs pull vs clone

- Push: Local → Remote
- Pull: Remote → Local + integrate
- Clone: Existing remote → new local repository

See [push-pull-clone.mmd](diagrams/push-pull-clone.mmd).

## `origin/main`

`main` is your local branch.

`origin/main` represents your local Git's knowledge/reference of the remote's `main` branch.

## Upstream

After:

```text
git push -u origin main
```

Git knows local `main` tracks remote `origin/main`, so later `git push` and `git pull` can often infer the destination/source.

## GitHub README and repository page

After pushing, GitHub can display files, folders, README content, commit history, branches, and repository metadata.

Keep repository descriptions and topics accurate.

## Editing directly on GitHub

GitHub's web UI can edit files and create commits. If you do that, the remote may gain commits your local repository does not yet have. This is why understanding `pull` matters.

## Secrets and sensitive data

Never push passwords, API keys, tokens, private SSH keys, production credentials, confidential datasets, or sensitive documents.

A private repository is not an excuse to commit secrets carelessly.

If a credential is exposed, treat it as compromised and revoke/rotate it. Adding it to `.gitignore` later does not remove it from existing Git history.

## Recommended beginner workflow

```text
Edit locally
  ↓
git status
  ↓
git diff
  ↓
git add
  ↓
git commit
  ↓
git push
```

When remote changes exist:

```text
git status → git pull → review → continue
```

## Practice

Complete the exercises in `exercises/`, then compare with `solutions/`.

## Next

**T07 — Python from Zero**
