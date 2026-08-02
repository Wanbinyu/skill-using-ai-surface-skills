param([switch]$Project, [switch]$Claude, [switch]$All)
$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Name = Split-Path $Root -Leaf
$Src = Join-Path $Root "skills\$Name"
if (-not (Test-Path $Src)) { throw "Missing $Src" }
function Install-To([string]$DestParent) {
  $dest = Join-Path $DestParent $Name
  New-Item -ItemType Directory -Force -Path $DestParent | Out-Null
  if (Test-Path $dest) { Remove-Item -Recurse -Force $dest }
  Copy-Item -Recurse $Src $dest
  Write-Host "Installed -> $dest"
}
if (-not $Project -and -not $Claude -and -not $All) { $Claude = $true }
if ($Claude -or $All) { Install-To (Join-Path $env:USERPROFILE ".claude\skills") }
if ($All) {
  Install-To (Join-Path $env:USERPROFILE ".agents\skills")
  Install-To (Join-Path $env:USERPROFILE ".cursor\skills")
}
if ($Project) {
  $base = (Get-Location).Path
  foreach ($rel in @(".claude\skills", ".agents\skills", ".cursor\skills", ".github\skills")) {
    Install-To (Join-Path $base $rel)
  }
}
Write-Host "Done. Restart Claude Code."
