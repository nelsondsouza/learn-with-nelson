# T03 Exercise — File Operations Practice

Work only inside `t03-practice`.

## Create a file

Inside `docs`, create `notes.txt`.

PowerShell:

```powershell
"Hello from T03" | Set-Content notes.txt
```

Bash/Zsh:

```bash
echo "Hello from T03" > notes.txt
```

## View it

PowerShell:

```powershell
Get-Content notes.txt
```

Bash/Zsh:

```bash
cat notes.txt
```

## Copy it

Create a copy called:

```text
notes-copy.txt
```

## Rename the copy

Rename it:

```text
reference.txt
```

## Move the renamed file

Move `reference.txt` into `data/`.

## Verify

Use listing commands to verify:

```text
t03-practice/
├── data/
│   └── reference.txt
├── docs/
│   └── notes.txt
└── src/
```

## Safe deletion practice

Create a temporary file named:

```text
delete-me.txt
```

Verify that it exists.

Delete **only that file**.

Verify that it no longer exists.

## Reflection

Explain the difference between:

- copying
- moving
- renaming
- deleting
