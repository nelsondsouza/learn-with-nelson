# T07 — Python from Zero

T07 is the first programming tutorial in Learn with Nelson.

The goal is not to teach all of Python. The goal is to help a complete beginner understand what a Python program is, how to run it, how to read simple code, how to work with variables and values, and how to respond when errors appear.

By the end, you will write and run a small Python program in VS Code, commit it with Git, and push it to GitHub.

## Prerequisites

- [T00 — How to Start Learning Tech](../../start-here/t00-how-to-start-learning-tech/)
- [T01 — How Computers Work](../t01-how-computers-work/)
- [T02 — Files, Folders & Paths](../t02-files-folders-paths/)
- [T03 — Command Line from Zero](../t03-command-line-from-zero/)
- [T04 — VS Code from Zero](../t04-vscode-from-zero/)
- [T05 — Git from Zero](../t05-git-from-zero/)
- [T06 — GitHub from Zero](../t06-github-from-zero/)

## Learning goals

You will learn:

- programming and Python
- Python interpreter
- `.py` files
- interactive mode vs script files
- `print()`
- comments
- variables and assignment
- strings, integers, floats, booleans
- arithmetic and comparison operators
- `input()`
- `int()`, `float()`, `str()`
- syntax/runtime errors
- beginner traceback reading
- running Python from terminal and VS Code
- Microsoft Python extension
- selecting an interpreter
- Git + GitHub workflow for a tiny Python project
- safe AI-assisted learning

## Deliberately not covered yet

T07 does not yet cover `if`, loops, lists, dictionaries, functions, classes, modules, packages, `pip`, virtual environments, testing frameworks, web frameworks, or data libraries.

## What is Python?

Python is a general-purpose programming language used in automation, web development, data analysis, machine learning, AI, scripting, testing, and education.

For T07, remember:

> Python lets us write instructions in text and have a Python interpreter execute them.

## Install Python

Use official Python guidance:

https://www.python.org/downloads/

### Windows

Current Python documentation may direct Windows users through the Python Install Manager.

Test:

```text
python --version
```

Depending on setup, you may also encounter:

```text
py --version
```

### macOS / Linux

Commonly:

```text
python3 --version
```

Follow current official platform guidance if Python is missing.

## VS Code Python extension

The official Microsoft Python extension adds language support, running, and debugging features.

Important:

> The extension does not install Python itself.

Install Python separately, then select the interpreter in VS Code.

## First program

Create `hello.py`:

```python
print("Hello, world!")
```

Run with the appropriate command:

```text
python hello.py
```

or:

```text
python3 hello.py
```

## Variables and values

```python
name = "Nelson"
age = 25
height = 1.75
is_learning = True
```

Types:

- string
- integer
- float
- boolean

Inspect:

```python
print(type(name))
```

## Operators

Arithmetic:

```python
a = 10
b = 3

print(a + b)
print(a - b)
print(a * b)
print(a / b)
```

Comparisons:

```python
print(a > b)
print(a < b)
print(a == b)
print(a != b)
```

Remember:

```text
=
assignment

==
comparison
```

## Input and conversion

```python
name = input("What is your name? ")
age = int(input("How old are you? "))

next_age = age + 1

print("Hello, " + name)
print("Next year you will be", next_age)
```

`input()` returns text, so conversion may be needed.

## Errors

Common beginner errors include:

- `SyntaxError`
- `NameError`
- `ValueError`
- `TypeError`

A good debugging flow:

```text
Read final error line
      ↓
Identify exception type
      ↓
Inspect referenced line
      ↓
Explain problem
      ↓
Change one thing
      ↓
Run again
```

## Project structure

```text
python-learning-project/
├── README.md
├── src/
│   ├── hello.py
│   └── profile.py
└── .gitignore
```

## Git workflow

After your program works:

```text
git status
git diff
git add ...
git diff --staged
git commit
git push
```

## Practice

Complete the exercises in `exercises/`.

## Next

**T08 — SQL from Zero**
