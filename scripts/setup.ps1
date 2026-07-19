Write-Host ""
Write-Host "Ultimate Claude Pack TR"
Write-Host "========================"
Write-Host ""

Write-Host "Checking folders..."

$folders=@(
".claude",
"agents",
"skills",
"mcp",
"prompts",
"templates",
"docs"
)

foreach($folder in $folders){

if(Test-Path $folder){

Write-Host "[OK] $folder"

}else{

New-Item -ItemType Directory $folder | Out-Null

Write-Host "[Created] $folder"

}

}

Write-Host ""
Write-Host "Project Ready."