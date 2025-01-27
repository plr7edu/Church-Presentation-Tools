#Persistent
#SingleInstance, Force
SetTitleMatchMode, 2

; Define global variables
global latestFile, latestTime

; Function to check for .ewsx files on the desktop and open the latest one by Date Created
CheckLatestEWSXFile()
{
    latestFile := ""
    latestTime := 0
    Loop, %A_Desktop%\*.ewsx, 0  ; Only search top-level files
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
        Sleep, 5000
        ExitApp
    }
}

; Set a timer to run the function once
SetTimer, CheckLatestEWSXFile, -1
return

; Close the script when the timer is done
GuiClose:
GuiEscape:
ExitApp
return
