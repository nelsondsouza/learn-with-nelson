# T03 — Command Line from Zero

The command line is one of the most useful tools you will learn.

It can also look intimidating at first because there are no obvious buttons to click.

This tutorial removes that mystery.

You will learn what terminals and shells are, how prompts work, how to navigate files and folders using commands, and how to safely create, inspect, copy, move, rename, and remove practice files.

The goal is not to memorize dozens of commands.

The goal is to understand the pattern:

> **Command + options + arguments**

and to become comfortable navigating your computer without a graphical file manager.

## Prerequisites

Complete:

- [T00 — How to Start Learning Tech](../../start-here/t00-how-to-start-learning-tech/)
- [T01 — How Computers Work](../t01-how-computers-work/)
- [T02 — Files, Folders & Paths](../t02-files-folders-paths/)

T02 is especially important because command-line navigation depends on understanding current directories, relative paths, absolute paths, `.` and `..`.

## Learning goals

By the end of T03, you should be able to explain and use:

- terminal
- shell
- command prompt
- PowerShell
- Bash
- terminal prompts
- commands
- arguments
- options/flags
- current working directory
- absolute and relative paths
- listing files
- changing directories
- creating directories
- creating simple files
- viewing file contents
- copying
- moving
- renaming
- deleting safely
- command history
- clearing the terminal
- tab completion
- quoting paths containing spaces
- common command-line errors
- why the same task can use different commands on different shells

## Safety first

For T03:

- work only inside the tutorial practice folder
- do not experiment in system folders
- do not delete files you did not create for this tutorial
- do not use administrator/root privileges
- do not copy destructive commands from random websites
- pause before pressing Enter on any delete command

The examples deliberately avoid dangerous recursive deletion patterns.

## Terminal vs shell

These terms are related but not identical.

### Terminal

A **terminal** is the interface/window through which you interact with a shell.

Examples include:

- Windows Terminal
- macOS Terminal
- GNOME Terminal
- Konsole

### Shell

A **shell** interprets commands you type.

Examples include:

- PowerShell
- Bash
- Zsh
- Windows Command Prompt (`cmd.exe`)

A useful beginner model:

> **Terminal = the window/interface**
>
> **Shell = the command interpreter running inside it**

See [terminal-shell-command.mmd](diagrams/terminal-shell-command.mmd).

## Common shells

### PowerShell

PowerShell is Microsoft's modern command shell and scripting environment.

It is widely available on Windows and also has cross-platform versions.

### Command Prompt

Windows Command Prompt uses `cmd.exe`.

It is older than PowerShell but still widely encountered.

### Bash

Bash is a common Unix shell used on Linux and in many development environments.

### Zsh

Zsh is another Unix shell. Modern macOS versions commonly use Zsh as the default interactive shell.

For Learn with Nelson, we will primarily show:

- **PowerShell** for Windows
- **Bash/Zsh-compatible commands** for macOS/Linux where practical

When commands differ, they will be shown separately.

## The prompt

A shell displays a prompt indicating it is ready for input.

PowerShell might show something like:

```text
PS C:\Users\Nelson>
```

Bash/Zsh might show something like:

```text
nelson@computer:~/projects$
```

or:

```text
nelson@MacBook ~ %
```

The exact prompt differs.

Do not copy the prompt itself when a tutorial shows a command.

If you see:

```text
PS C:\Users\Nelson> Get-Location
```

you type only:

```powershell
Get-Location
```

## Command anatomy

A command often contains:

```text
command [options] [arguments]
```

Example:

```bash
cd projects
```

Here:

- `cd` is the command
- `projects` is an argument

Another example:

```bash
ls -la
```

Here:

- `ls` is the command
- `-l` and `-a` are options/flags

PowerShell uses a richer command model and often uses parameter names such as:

```powershell
Get-ChildItem -Force
```

You do not need to memorize terminology perfectly yet. Learn to recognize the parts.

See [command-anatomy.mmd](diagrams/command-anatomy.mmd).

## Current working directory

The shell always has a current location.

T02 introduced this concept as the **current directory** or **working directory**.

### PowerShell

```powershell
Get-Location
```

Alias commonly used:

```powershell
pwd
```

### macOS/Linux

```bash
pwd
```

`pwd` is commonly expanded as "print working directory."

## List files and folders

### PowerShell

```powershell
Get-ChildItem
```

Common aliases include:

```powershell
ls
dir
```

### macOS/Linux

```bash
ls
```

To include hidden files in many Unix shells:

```bash
ls -a
```

In PowerShell:

```powershell
Get-ChildItem -Force
```

## Change directory

Across PowerShell, Command Prompt, Bash, and Zsh, the basic command is commonly:

```text
cd
```

Examples:

```text
cd documents
```

Move to parent:

```text
cd ..
```

Move using a relative path:

```text
cd ../data
```

Move using an absolute path:

PowerShell / Windows example:

```powershell
cd "C:\Users\Nelson\Documents"
```

macOS example:

```bash
cd "/Users/nelson/Documents"
```

Linux example:

```bash
cd "/home/nelson/Documents"
```

T02 is what makes these paths understandable.

## Home directory

### PowerShell

A convenient form is:

```powershell
cd ~
```

### Bash/Zsh

```bash
cd ~
```

or simply:

```bash
cd
```

depending on the shell.

`~` commonly represents the current user's home directory.

## Create a directory

### PowerShell

```powershell
New-Item -ItemType Directory -Name t03-practice
```

Shorter cross-familiar form:

```powershell
mkdir t03-practice
```

### Bash/Zsh

```bash
mkdir t03-practice
```

## Create a simple text file

### PowerShell

```powershell
"Hello from T03" | Set-Content notes.txt
```

### Bash/Zsh

```bash
echo "Hello from T03" > notes.txt
```

These commands create or overwrite `notes.txt`.

Only use them on practice files you intend to create.

## View file contents

### PowerShell

```powershell
Get-Content notes.txt
```

### Bash/Zsh

```bash
cat notes.txt
```

## Copy a file

### PowerShell

```powershell
Copy-Item notes.txt notes-copy.txt
```

### Bash/Zsh

```bash
cp notes.txt notes-copy.txt
```

## Move or rename a file

### PowerShell

Rename:

```powershell
Rename-Item notes-copy.txt renamed-notes.txt
```

Move:

```powershell
Move-Item renamed-notes.txt docs/
```

### Bash/Zsh

The `mv` command is used for both moving and renaming.

Rename:

```bash
mv notes-copy.txt renamed-notes.txt
```

Move:

```bash
mv renamed-notes.txt docs/
```

## Delete a file safely

Only delete a file that you created specifically for this tutorial.

### PowerShell

```powershell
Remove-Item temporary.txt
```

### Bash/Zsh

```bash
rm temporary.txt
```

Important:

> `rm` and `Remove-Item` can permanently remove files.

Do not experiment with recursive or force options until you understand them.

The practice exercises never require deleting system or personal files.

## Create and remove an empty directory

### PowerShell

Create:

```powershell
mkdir empty-folder
```

Remove:

```powershell
Remove-Item empty-folder
```

### Bash/Zsh

Create:

```bash
mkdir empty-folder
```

Remove an empty directory:

```bash
rmdir empty-folder
```

We deliberately avoid recursive directory-deletion commands in this beginner tutorial.

## Clear the screen

### PowerShell

```powershell
Clear-Host
```

Common alias:

```powershell
cls
```

### Bash/Zsh

```bash
clear
```

This clears the display, not your command history or files.

## Command history

Shells remember recent commands.

Use the **Up Arrow** and **Down Arrow** keys to navigate previous commands.

This saves retyping and helps you correct mistakes.

## Tab completion

Type part of a folder or filename, then press **Tab**.

Your shell may complete the name for you.

This is useful because it:

- saves typing
- reduces spelling mistakes
- helps with long names
- makes paths easier

Tab completion behavior varies by shell, but it is one of the most useful habits to learn early.

## Paths with spaces

Suppose you have:

```text
My Projects
```

Without careful handling, the shell may interpret the words separately.

Use quotes around paths containing spaces.

PowerShell:

```powershell
cd "C:\Users\Nelson\My Projects"
```

Bash/Zsh:

```bash
cd "/Users/nelson/My Projects"
```

Another Unix-style option is escaping the space:

```bash
cd My\ Projects
```

For beginners, quoting the whole path is usually easier to read.

## Relative paths in real commands

Suppose:

```text
project/
├── data/
│   └── sales.csv
└── src/
```

and your current directory is `src/`.

T02 taught that:

```text
../data/sales.csv
```

means:

1. go to parent
2. enter `data`
3. access `sales.csv`

The terminal now lets you use that reasoning directly.

See [navigation-paths.mmd](diagrams/navigation-paths.mmd).

## Cross-platform command comparison

| Task | PowerShell | Bash/Zsh |
|---|---|---|
| Current directory | `Get-Location` / `pwd` | `pwd` |
| List files | `Get-ChildItem` / `ls` | `ls` |
| Include hidden | `Get-ChildItem -Force` | `ls -a` |
| Change directory | `cd` | `cd` |
| Create directory | `mkdir` | `mkdir` |
| View text file | `Get-Content` | `cat` |
| Copy file | `Copy-Item` | `cp` |
| Move file | `Move-Item` | `mv` |
| Rename file | `Rename-Item` | `mv` |
| Delete file | `Remove-Item` | `rm` |
| Clear display | `Clear-Host` / `cls` | `clear` |

PowerShell aliases can make commands appear Unix-like, but the underlying shell behavior and command model are not identical.

## Common errors

### "Command not found" / "not recognized"

Possible causes:

- spelling error
- command not installed
- command belongs to a different shell
- executable not available through the system PATH

### "No such file or directory" / "path not found"

Check:

- current directory
- spelling
- relative path
- extension
- capitalization
- whether the file moved

### Permission denied / access denied

You may not have permission.

Do not immediately solve this by running as Administrator/root.

First understand why permission is required.

### Path with spaces fails

Quote the path.

### Wrong shell

A command copied from a Bash tutorial may not work in PowerShell, and vice versa.

Identify your shell before assuming a command is universal.

## Practice

Complete:

- [Open Your Terminal](exercises/open-your-terminal.md)
- [Navigation Practice](exercises/navigation-practice.md)
- [File Operations Practice](exercises/file-operations-practice.md)
- [Command-Line Mini Challenge](exercises/mini-challenge.md)

Then compare with:

- [Navigation Example](solutions/navigation-example.md)
- [File Operations Example](solutions/file-operations-example.md)

The repository includes a safe reference tree under `examples/practice-tree/`.

## Next

**T04 — VS Code from Zero**

You now know how to navigate and manipulate simple practice files using a shell.

Next we will learn the code editor that will become our main workspace.
