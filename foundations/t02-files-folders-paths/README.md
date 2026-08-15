# T02 — Files, Folders & Paths

Files, folders, and paths are foundational to almost everything you will do in technology. Before using the command line, Git, Python, VS Code, databases, or development tools, you need to understand where files live and how computers refer to their locations.

## Prerequisites

- [T00 — How to Start Learning Tech](../../start-here/t00-how-to-start-learning-tech/)
- [T01 — How Computers Work](../t01-how-computers-work/)

No software installation is required.

## Learning goals

By the end of T02, you should understand files, folders/directories, filenames, extensions, folder hierarchies, root/parent/child/current directories, absolute and relative paths, Windows and macOS/Linux path conventions, `.` and `..`, hidden files, home directories, case sensitivity, common path errors, and project organization.

## Files and folders

A **file** stores information. Examples: `report.pdf`, `sales.xlsx`, `photo.jpg`, `app.py`, `README.md`.

A **folder** organizes files and other folders. In technical contexts, **directory** is commonly used instead of folder.

For this tutorial: **folder ≈ directory**.

See [folder-hierarchy.mmd](diagrams/folder-hierarchy.mmd).

## Filenames and extensions

In `report.pdf`, `report` is the base name and `.pdf` is the extension.

Common extensions include `.txt`, `.md`, `.pdf`, `.docx`, `.xlsx`, `.csv`, `.jpg`, `.png`, `.html`, `.css`, `.js`, `.py`, `.sql`, `.json`, `.yaml`, and `.yml`.

Important: renaming `photo.jpg` to `photo.png` does **not** convert JPEG data into PNG data.

## Paths

A **path** describes a location in a file system.

Windows example:

```text
C:\Users\Nelson\Documents\project\README.md
```

macOS example:

```text
/Users/nelson/Documents/project/README.md
```

Linux example:

```text
/home/nelson/project/README.md
```

Windows commonly uses backslashes. Unix-like systems use forward slashes. Learn the pattern rather than memorizing someone else's username or folders.

See [path-anatomy.mmd](diagrams/path-anatomy.mmd).

## Absolute and relative paths

An **absolute path** identifies a location from a complete/root starting point.

A **relative path** identifies a location relative to the current location.

Given:

```text
project/
├── README.md
├── data/
│   └── sales.csv
└── reports/
    └── summary.md
```

From `project/`, `data/sales.csv` is a relative path.

From `reports/`, the same file can be referenced conceptually as `../data/sales.csv`.

See [absolute-vs-relative.mmd](diagrams/absolute-vs-relative.mmd).

## Current, parent, root, and home

`.` commonly represents the current directory.

`..` commonly represents the parent directory.

On Unix-like systems `/` is the file-system root. Windows commonly uses drive roots such as `C:\`.

Typical home/user locations include `C:\Users\<username>`, `/Users/<username>`, and `/home/<username>`.

## Hidden files

Some files are hidden by default. You may later encounter `.git`, `.gitignore`, and `.env`.

On Unix-like systems, names beginning with `.` are conventionally hidden from normal listings. Windows also supports hidden attributes.

Do not delete hidden files merely because you do not recognize them.

## Case sensitivity

Case behavior varies by file system and configuration. On a case-sensitive system, `Report.csv` and `report.csv` can be different names.

Do not rely on case-insensitive behavior.

## Why paths fail

Common causes include misspellings, the wrong current directory, incorrect relative paths, moved/renamed files, hidden extensions, case differences, permissions, cloud/network locations, and hard-coded paths copied from another computer.

## Project structure

A predictable structure makes projects easier to navigate, share, automate, and version-control.

```text
project/
├── README.md
├── data/
├── docs/
├── src/
├── tests/
└── output/
```

Not every project needs these folders. Structure should serve the work.

## Practice

Complete:

- [Explore Your Files](exercises/explore-your-files.md)
- [Paths Practice](exercises/paths-practice.md)
- [Organize a Project](exercises/organize-a-project.md)

Then compare with the example solutions.

A safe example hierarchy is included under `examples/practice-tree/`.

## Next

**T03 — Command Line from Zero**
