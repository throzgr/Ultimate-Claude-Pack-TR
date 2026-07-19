Write-Host "========================================="
Write-Host " Ultimate Claude Pack TR Installer"
Write-Host "========================================="

Write-Host ""
Write-Host "Checking folders..."

$folders = @(
"skills",
"agents",
"mcp",
"prompts",
"templates",
"hooks",
"docs"
)

foreach($folder in $folders)
{
    if(Test-Path $folder)
    {
        Write-Host "[OK] $folder"
    }
    else
    {
        New-Item -ItemType Directory -Path $folder | Out-Null
        Write-Host "[CREATED] $folder"
    }
}

Write-Host ""
Write-Host "Installation Complete."