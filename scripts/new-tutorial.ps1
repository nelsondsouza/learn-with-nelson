param(
    [Parameter(Mandatory=$true)]
    [string]$Number,

    [Parameter(Mandatory=$true)]
    [string]$Slug,

    [Parameter(Mandatory=$false)]
    [string]$Parent = "foundations"
)

$repoRoot = Split-Path -Parent $PSScriptRoot
$template = Join-Path $repoRoot "shared\templates\tutorial"
$targetName = "$($Number.ToLower())-$Slug"
$target = Join-Path $repoRoot "$Parent\$targetName"

if (Test-Path $target) {
    Write-Error "Target already exists: $target"
    exit 1
}

New-Item -ItemType Directory -Force -Path $target | Out-Null

$folders = @("examples", "exercises", "solutions", "diagrams")
foreach ($folder in $folders) {
    New-Item -ItemType Directory -Force -Path (Join-Path $target $folder) | Out-Null
}

Copy-Item (Join-Path $template "README.md") (Join-Path $target "README.md")
Copy-Item (Join-Path $template "resources.md") (Join-Path $target "resources.md")

Write-Host "Created tutorial scaffold:"
Write-Host $target
