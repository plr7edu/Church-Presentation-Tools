#Persistent
SetTitleMatchMode, 2

; Function to check for .pptx files on the desktop
CheckPPTXFiles()
{
    pptxCount := 0
    Loop, %A_Desktop%\*.pptx, 0  ; Only search top-level files
    {
        pptxCount++
        pptxFile := A_LoopFileFullPath
    }

    if (pptxCount == 1)
    {
        Run, "%pptxFile%"
        Sleep, 5000
        Send, +!{F5}
        Sleep, 5000
        ExitApp
        return
    }
    else if (pptxCount > 1)
    {
        ; Create a GUI to display the message
        Gui, Font, s16, Segoe UI  ; Set font to Segoe UI, size 16
        Gui, Add, Text, Center, The desktop folder contains multiple PowerPoint files.`nOpen the correct PowerPoint manually.
        Gui, Show, Center
    }
}

; Set a timer to run the function once
SetTimer, CheckPPTXFiles, -1
return

; Close the GUI when the OK button is pressed
ButtonOK:
GuiClose:
Gui, Destroy
return
