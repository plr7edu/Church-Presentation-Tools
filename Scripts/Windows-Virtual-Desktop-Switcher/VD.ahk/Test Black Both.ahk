#Include, VD.ahk ; Make sure you have the VD library

#Persistent

; Initialize the VD library
VD.Init()

Numpad1::
{
    ; Get the current virtual desktop number and active window class
    currentDesktop := VD.GetCurrentDesktopNum()
    WinGetClass, activeClass, A

    ; Check conditions and send keys
    if (currentDesktop == 1 && activeClass == "PodiumParent")
        Send, B
    else if (currentDesktop == 2 && activeClass == "TFormEZWorshipMain")
        Send, ^b
}
return
