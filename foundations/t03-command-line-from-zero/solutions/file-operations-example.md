# T03 — File Operations Example

Assume you are inside `t03-practice/docs`.

## PowerShell

```powershell
"Hello from T03" | Set-Content notes.txt
Get-Content notes.txt
Copy-Item notes.txt notes-copy.txt
Rename-Item notes-copy.txt reference.txt
Move-Item reference.txt ../data/
"temporary" | Set-Content delete-me.txt
Remove-Item delete-me.txt
```

## Bash/Zsh

```bash
echo "Hello from T03" > notes.txt
cat notes.txt
cp notes.txt notes-copy.txt
mv notes-copy.txt reference.txt
mv reference.txt ../data/
echo "temporary" > delete-me.txt
rm delete-me.txt
```

The destructive step is intentionally limited to `delete-me.txt`, which you created specifically for this exercise.

Never generalize delete commands to unfamiliar directories without understanding their effect.
