# Get the current script directory
$currentScriptPath = $PSScriptRoot

# KeyManager-Minimized
$xmlFilePath = Join-Path -Path $currentScriptPath -ChildPath "KeyManager-Minimized.xml"
Register-ScheduledTask -TaskName "KeyManager-Minimized" -Xml (Get-Content -Path $xmlFilePath | Out-String) -TaskPath "\SkipUAC\"

# Admin Kill Church Presentation Unified Remote
$xmlFilePath = Join-Path -Path $currentScriptPath -ChildPath "Admin-Kill-Church-Presentation-Unified-Remote.xml"
Register-ScheduledTask -TaskName "Admin-Kill-Church-Presentation-Unified-Remote" -Xml (Get-Content -Path $xmlFilePath | Out-String) -TaskPath "\SkipUAC\"

