# Import the VirtualDesktop module
Import-Module VirtualDesktop

# Get the handle of the Notepad process
$notepadProcess = Get-Process -Name notepad -ErrorAction SilentlyContinue

if ($notepadProcess) {
    # Get the handle of the Notepad window
    $notepadWindow = $notepadProcess.MainWindowHandle

    # Get the handle of virtual desktop 2
    $desktop2 = Get-VirtualDesktop -Number 1

    # Move the Notepad window to virtual desktop 2
    Move-Window -Window $notepadWindow -Desktop $desktop2
} else {
    Write-Host "Notepad is not running."
}
