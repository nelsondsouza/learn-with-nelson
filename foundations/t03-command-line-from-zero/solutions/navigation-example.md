# T03 — Navigation Example

A typical solution:

```text
cd ~
mkdir t03-practice
cd t03-practice
mkdir docs
mkdir data
mkdir src
cd docs
cd ..
cd src
cd ../data
```

From `src` to `data`:

```text
../data
```

because:

- `..` moves to the parent (`t03-practice`)
- `data` selects the sibling directory

To confirm location:

PowerShell:

```powershell
Get-Location
```

or:

```powershell
pwd
```

Bash/Zsh:

```bash
pwd
```

To list:

PowerShell:

```powershell
Get-ChildItem
```

Bash/Zsh:

```bash
ls
```
