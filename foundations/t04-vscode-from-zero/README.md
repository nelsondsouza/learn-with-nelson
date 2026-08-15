# T04 — VS Code from Zero

Visual Studio Code (VS Code) will become the main editing workspace for much of the Learn with Nelson tutorial series.

This tutorial starts from installation and assumes you have never used a code editor before.

## Prerequisites

- [T00 — How to Start Learning Tech](../../start-here/t00-how-to-start-learning-tech/)
- [T01 — How Computers Work](../t01-how-computers-work/)
- [T02 — Files, Folders & Paths](../t02-files-folders-paths/)
- [T03 — Command Line from Zero](../t03-command-line-from-zero/)

## Learning goals

You will learn:

- code editors and IDEs
- VS Code vs Visual Studio
- official VS Code installation
- Activity Bar, Primary Side Bar, Secondary Side Bar, Explorer, Editor, Panel, Status Bar
- opening a file vs opening a folder
- workspace basics
- creating and editing files
- saving and Auto Save
- syntax highlighting and language mode
- Command Palette and Quick Open
- integrated terminal
- `code .`
- User vs Workspace settings
- extensions
- Workspace Trust and Restricted Mode
- basic shortcuts
- AI features and agent safety

## Official download

Use the official VS Code website:

https://code.visualstudio.com/

Do not download VS Code from unofficial software-download sites.

## Installation

### Windows

Use the official Windows download. For normal individual use, the User Setup installer is the usual starting point.

After installation, reopen any terminal windows that were already running.

The installer normally makes the `code` command available on PATH.

Test:

```powershell
code --version
```

### macOS

Download the official `.dmg`, open it, and drag Visual Studio Code.app into Applications.

To enable the `code` command:

1. Open VS Code.
2. Open the Command Palette.
3. Run:

```text
Shell Command: Install 'code' command in PATH
```

4. Restart the terminal.
5. Test:

```bash
code --version
```

### Linux

Use the official distribution-specific instructions:

https://code.visualstudio.com/docs/setup/linux

Do not blindly paste package-manager commands intended for another distribution.

## VS Code vs Visual Studio

They are different Microsoft products.

**Visual Studio Code** is a lightweight, cross-platform, extensible code editor.

**Visual Studio** is a different development environment with its own installation and tooling.

In this series, **VS Code** always means **Visual Studio Code**.

## Code editor vs IDE

A code editor focuses on editing source files and can be extended with development tools.

An IDE typically integrates editing, debugging, building, project tooling, and other capabilities more deeply.

VS Code can gain IDE-like capabilities through built-in features and extensions.

## Interface

The exact interface evolves, but the main areas include:

- Activity Bar
- Primary Side Bar
- Secondary Side Bar
- Explorer
- Editor
- Panel
- Status Bar

See [vscode-interface.mmd](diagrams/vscode-interface.mmd).

## Open a folder, not just a file

For project work, prefer opening the project folder.

This gives VS Code project context:

- Explorer shows the hierarchy
- relative paths make sense
- workspace settings can apply
- terminals can start in the project
- source control can detect repositories
- extensions can understand project files

## Workspace

A VS Code workspace is the collection of one or more folders opened in a VS Code window.

For beginner work, one folder is usually enough.

See [folder-workspace.mmd](diagrams/folder-workspace.mmd).

## First workspace

Create:

```text
t04-first-workspace/
├── README.md
├── notes.txt
├── data/
├── docs/
└── src/
```

Open the folder with **File → Open Folder**.

Or, once the `code` command works:

```text
cd path/to/t04-first-workspace
code .
```

The dot means the current directory.

## Explorer

Use Explorer to:

- create files
- create folders
- rename
- move
- delete
- open files

Practice only in the tutorial workspace.

## Save

Windows/Linux:

```text
Ctrl+S
```

macOS:

```text
Cmd+S
```

Auto Save exists, but first understand the difference between edited and saved content.

## Syntax highlighting and language mode

VS Code identifies many file types.

Examples:

```text
README.md  → Markdown
app.py     → Python
index.html → HTML
```

Syntax highlighting improves readability; it does not prove code is correct.

## Command Palette

Windows/Linux:

```text
Ctrl+Shift+P
```

macOS:

```text
Cmd+Shift+P
```

Use it to search VS Code commands.

## Quick Open

Windows/Linux:

```text
Ctrl+P
```

macOS:

```text
Cmd+P
```

Start typing a filename to find it quickly.

## Integrated terminal

Open:

**Terminal → New Terminal**

The integrated terminal runs a real shell such as PowerShell, Bash, or Zsh.

The safety habits from T03 still apply.

See [editor-terminal-flow.mmd](diagrams/editor-terminal-flow.mmd).

## `code .`

When the VS Code command-line interface is available:

```text
code .
```

means:

- `code` — open VS Code
- `.` — current directory

So the command means:

> Open the current directory in VS Code.

## Settings

### User settings

Apply broadly to your VS Code environment.

### Workspace settings

Apply to a specific workspace/project.

Start with defaults. Change settings when you understand why.

## Extensions

Extensions add capabilities such as language support, debuggers, formatters, linters, database tools, remote development, themes, and AI features.

Install extensions only when they serve a real need.

## Extension safety

Before installing an extension:

- understand its purpose
- check the publisher
- review the Marketplace page
- prefer official or well-established extensions where appropriate
- avoid random recommendations
- uninstall extensions you no longer need

Treat extensions as software.

## Workspace Trust

VS Code includes Workspace Trust.

If you open code from an unfamiliar source, VS Code may keep the workspace in Restricted Mode.

A strong beginner rule:

> If you do not trust the source, do not automatically grant full trust.

Review the project first.

See [workspace-trust.mmd](diagrams/workspace-trust.mmd).

## AI in VS Code

Modern VS Code includes significant AI capabilities depending on configuration and access.

AI tools may be able to:

- explain code
- suggest code
- edit files
- create files
- search the workspace
- run terminal commands
- use tools

Do not approve a command merely because AI generated it.

Understand what it will read, change, run, or delete.

## Practice

Complete:

- [Install and Verify VS Code](exercises/install-and-verify.md)
- [Explore the Interface](exercises/interface-tour.md)
- [Build Your First Workspace](exercises/first-workspace.md)
- [Integrated Terminal Practice](exercises/integrated-terminal.md)
- [Mini Challenge](exercises/mini-challenge.md)

Then compare with the example solutions.

## Next

**T05 — Git from Zero**
