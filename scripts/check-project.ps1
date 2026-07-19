Write-Host ""
Write-Host "Ultimate Claude Pack TR"

$dirs=@(
".claude",
".github",
"skills",
"agents",
"prompts",
"mcp",
"docs"
)

foreach($d in $dirs){

if(Test-Path $d){

Write-Host "[OK] $d"

}else{

Write-Host "[Missing] $d"

}

}