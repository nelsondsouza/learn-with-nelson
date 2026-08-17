# T06 — Connect and Push Example

```text
git init -b main
git add README.md
git commit -m "Create project README"
git remote add origin https://github.com/USERNAME/github-learning-project.git
git remote -v
git push -u origin main
```

After upstream is set, future pushes can often be just:

```text
git push
```
