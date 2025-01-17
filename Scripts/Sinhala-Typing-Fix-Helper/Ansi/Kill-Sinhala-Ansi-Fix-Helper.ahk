; Define the script name
scriptName := "Start-Sinhala-Ansi-Fix-Helper.ahk"

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
    MsgBox, Script "Start-Sinhala-Ansi-Fix-Helper.ahk" is not running.
}

; Kill KeyHelp
processName := "KeyHelp.exe"
Process, Close, %processName%


