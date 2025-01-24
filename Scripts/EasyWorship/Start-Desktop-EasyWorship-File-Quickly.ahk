#Persistent
SetTitleMatchMode, 2

; Function to check for .ewsx files on the desktop
CheckEWSXFiles()
{
    ewsxCount := 0
    Loop, %A_Desktop%\*.ewsx, 0  ; Only search top-level files
    {
        ewsxCount++
        ewsxFile := A_LoopFileFullPath
    }

    if (ewsxCount == 1)
    {
        Run, "%ewsxFile%"
        ExitApp
        return
    }
    else if (ewsxCount > 1)
    {
        ; Create a GUI to display the message
        Gui, Font, s16, Segoe UI  ; Set font to Segoe UI, size 16
        Gui, Add, Text, Center, The desktop folder contains multiple EasyWorship files.`nOpen the correct EasyWorship file manually.
        Gui, Show, Center
    }
}

; Set a timer to run the function once
SetTimer, CheckEWSXFiles, -1
return

; Close the GUI when the OK button is pressed
ButtonOK:
GuiClose:
Gui, Destroy
return
