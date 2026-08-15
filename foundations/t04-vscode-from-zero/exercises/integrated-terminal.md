# T04 Exercise — Integrated Terminal

Open the `t04-first-workspace` folder in VS Code.

Open **Terminal → New Terminal**.

Check where you are.

PowerShell:

```powershell
Get-Location
Get-ChildItem
```

Bash/Zsh:

```bash
pwd
ls
```

Create `terminal-note.txt`.

PowerShell:

```powershell
"Created from the integrated terminal" | Set-Content terminal-note.txt
```

Bash/Zsh:

```bash
echo "Created from the integrated terminal" > terminal-note.txt
```

Watch Explorer. The new file should appear.

Explain how Explorer and the integrated terminal are working with the same folder.
