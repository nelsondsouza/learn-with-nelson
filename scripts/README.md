# Repository Scripts

## Create a new tutorial scaffold

From PowerShell:

```powershell
.\scripts\new-tutorial.ps1 -Number "T01" -Slug "how-computers-work"
```

This creates:

```text
foundations/
└── t01-how-computers-work/
    ├── README.md
    ├── resources.md
    ├── examples/
    ├── exercises/
    ├── solutions/
    └── diagrams/
```

You can choose another parent folder:

```powershell
.\scripts\new-tutorial.ps1 -Number "T20" -Slug "react-basics" -Parent "developer"
```
