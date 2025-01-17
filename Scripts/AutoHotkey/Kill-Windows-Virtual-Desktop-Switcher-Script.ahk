; Define the script name
scriptName := "desktop_switcher.ahk"

; Get the script's process ID
DetectHiddenWindows, On
SetTitleMatchMode, 2
WinGet, scriptPID, PID, %scriptName%

; Close the script's window
if scriptPID
{
    Process, Close, %scriptPID%
    ;MsgBox, Script "Start-Sinhala-Ansi-Fix-Helper.ahk" has been closed.
}
else
{
    MsgBox, Script "desktop_switcher.ahk" is not running.
}

