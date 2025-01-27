#Persistent
#SingleInstance, Force
SetTitleMatchMode, 2

; Define global variables
global Cdown

; Function to check for .pptx files on the desktop and open the latest one by Date Created
CheckLatestPPTXFile()
{
    latestFile := ""
    latestTime := 0
    Loop, %A_Desktop%\*.pptx, 0  ; Only search top-level files
    {
        ; Get the Date Created time of the current file
        FileGetTime, createdTime, %A_LoopFileFullPath%, C

        ; Check if this file has a later Date Created time than the current latest
        if (createdTime > latestTime)
        {
            latestTime := createdTime
            latestFile := A_LoopFileFullPath
        }
    }

    if (latestFile != "")
    {
        Run, "%latestFile%"

        ; Show message and progress bar
        Gui, +AlwaysOnTop  ; Ensure the message box stays on top of all windows
        Gui, Font, s20, Segoe UI  ; Set font to Segoe UI, size 20
        Gui, Add, Text, Center, In just a few seconds, the Presenter View window will automatically open with the PowerPoint file.
        Gui, Add, Progress, w200 h20 cGreen vCdown, 100
        Gui, Show, Center AutoSize

        ; Countdown progress bar
        Loop, 9
        {
            GuiControl,, Cdown, % 100 - (100 / 9) * A_Index
            Sleep, 1000
        }
        Gui, Destroy

        Send, +!{F5}
        Sleep, 5000
        ExitApp
    }
}

; Set a timer to run the function once
SetTimer, CheckLatestPPTXFile, -1
return

; Close the script when the timer is done
GuiClose:
GuiEscape:
ExitApp
return
