/*
██    ██ ██████      ███████ ██   ██  █████  ███    ███ ██████  ██      ███████ ███████     █████  ██   ██ ██   ██ 
██    ██ ██   ██     ██       ██ ██  ██   ██ ████  ████ ██   ██ ██      ██      ██         ██   ██ ██   ██ ██  ██  
██    ██ ██   ██     █████     ███   ███████ ██ ████ ██ ██████  ██      █████   ███████    ███████ ███████ █████   
 ██  ██  ██   ██     ██       ██ ██  ██   ██ ██  ██  ██ ██      ██      ██           ██    ██   ██ ██   ██ ██  ██  
  ████   ██████      ███████ ██   ██ ██   ██ ██      ██ ██      ███████ ███████ ███████ ██ ██   ██ ██   ██ ██   ██                                                                                                                                                                                                                                 
*/

; === SYMBOLS ===
; !   <- Alt
; +   <- Shift
; ^   <- Ctrl
; #   <- Win
; For more, visit https://autohotkey.com/docs/Hotkeys.htm                                                                                                                   
                                                                                                                

; ==========================================================================================================================================
; === START SETUP ==========================================================================================================================
; ==========================================================================================================================================


#NoEnv                                         ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
ListLines Off
SetBatchLines -1
SendMode Input                                 ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%                    ; Ensures a consistent starting directory.
#KeyHistory 0
#WinActivateForce

Process, Priority,, H

SetWinDelay -1
SetControlDelay -1

SetNumLockState, On                            ; Make Sure Numlock Enable 


; ==========================================================================================================================================
; === INCLUDE THE LIBRARY ==================================================================================================================
; ==========================================================================================================================================


#Include %A_LineFile%\..\VD.ahk                ; Include the library
; or
; #Include %A_LineFile%\..\_VD.ahk
; ...{startup code}
; VD.init()

/*
VD.ahk : calls `VD.init()` on #Include
_VD.ahk : `VD.init()` when you want, like after a GUI has rendered, for startup performance reasons
*/

WinHide, % "Malwarebytes Tray Application"     ; You should WinHide invisible programs that have a window.
;#SETUP END

#Include <FindText>                            ; Add FindText 


; ==========================================================================================================================================
; === START VIRTUAL DESKTOPS ===============================================================================================================
; ==========================================================================================================================================


VD.createUntil(3) ;create until we have at least 3 VD
return


; ==========================================================================================================================================
; === KEYBINDINGS & HOTKEYS ================================================================================================================
; ==========================================================================================================================================


; Select Virtual Desktop -------------------------------------------------------------------------------------------------------------------


; Select Virutal Desktop 1 & Activate and Maximize PowerPoint Presenter View Window & Double click on text called "Next" on that Window
numpad1::                                
    VD.goToDesktopNum(1), 
    if WinExist("ahk_class PodiumParent")
    WinActivate,
    WinMaximize,

Text:="|<Powerpoint Next>*81$38.7szzzwkyDzzzA7Xzzzn1sw6C01CCMnbAFXDCFn6MnlYwlmA0QTAQ3Dz7n7UnzUwlsAztDAT3bAtn7sw6CA8"

if (ok:=FindText(X, Y, 1317-150000, 100-150000, 1317+150000, 100+150000, 0, 0, Text))
{
    FindText().Click(X, Y, "L") 
}    
Return


; Select Virutal Desktop 2 & Activate and Maximize EasyWorship Window 
numpad2::
    VD.goToDesktopNum(2), 
    if WinExist("EasyWorship")
    WinActivate,
    WinMaximize, 
Return


; Select Virutal Desktop 3
numpad3::VD.goToDesktopNum(3)


; Move and Go Select Window ---------------------------------------------------------------------------------------------------------------- 


;Go to the 1 st Virtual Desktop with the selected Window.
LControl & 1::VD.MoveWindowToDesktopNum("A",1), VD.goToDesktopNum(1)

;Go to the 2 st Virtual Desktop with the selected Window.
LControl & 2::VD.MoveWindowToDesktopNum("A",2), VD.goToDesktopNum(2)

;Go to the 1 st Virtual Desktop with the selected Window.
LControl & 3::VD.MoveWindowToDesktopNum("A",3), VD.goToDesktopNum(3)


; Only Move the Select Window --------------------------------------------------------------------------------------------------------------


; Move Select Window to 1 st Virtual Desktop
Alt & 1::VD.MoveWindowToDesktopNum("A",1)

; Move Select Window to 2 st Virtual Desktop
Alt & 2::VD.MoveWindowToDesktopNum("A",2)

; Move Select Window to 3 st Virtual Desktop
Alt & 3::VD.MoveWindowToDesktopNum("A",3)


; Wrapping / Cycle Back to First Desktop When at the Last ----------------------------------------------------------------------------------


; Go to the First Virtual Desktop When you at Last Virtual Desktop (Virtual Desktop 1)
LControl & left::VD.goToRelativeDesktopNum(-1)

; Go to the Last Virtual Desktop When you at Last Virtual Desktop (Virtual Desktop 3)
LControl & right::VD.goToRelativeDesktopNum(+1)


; Move Window to Left or Right and Follow It -----------------------------------------------------------------------------------------------


;Move Window to Left 
#!left::VD.goToDesktopNum(VD.MoveWindowToRelativeDesktopNum("A", -1))

;Move Window to Right 
#!right::VD.goToDesktopNum(VD.MoveWindowToRelativeDesktopNum("A", 1))


; Open My VD.ahk Guide Notes ---------------------------------------------------------------------------------------------------------------


;  Open My  "VD.ahk_guide notes.txt" note in script Directory.
LWin & NumpadMult:: ; Press Alt+a to execute the hotkey
    myPath := A_ScriptDir "/VD.ahk_guide_notes.txt"
    Run, notepad.exe %myPath%


; Getters ----------------------------------------------------------------------------------------------------------------------------------


; Current Desktop Number
f1::
    msgbox % VD.getCurrentDesktopNum()
return

; Virtual Desktop Count 
f3::
    msgbox % VD.getCount()
return

; Get Window Running or Not (Need to change Window Title in the Script) 
f6::
    ; msgbox % VD.getDesktopNumOfWindow("WinTitle")
    ; msgbox % VD.getDesktopNumOfWindow("notepad.exe")
return


; Manage Virtual Desktop -------------------------------------------------------------------------------------------------------------------


; Create New Virtual Desktop and Go to newly created
!NumpadAdd::VD.createDesktop(true) 

; Remove Currnet Virtual Desktop
!NumpadSub::VD.removeDesktop(VD.getCurrentDesktopNum())


; Pin Window -------------------------------------------------------------------------------------------------------------------------------


; Pin Window to all Virtual Workspaces
!NumpadEnter::
    VD.TogglePinWindow("A")
return


; Autohotkey Script ------------------------------------------------------------------------------------------------------------------------


; Pause / Resume Autohotkey Script
;Shift &  Up::
Numpad9::
Suspend ;Suspend Hotkeys off/on
Pause,, 1 ;Pause Script off/on
Return

; Exit Script
f4::Exitapp


; Select Application Windows ---------------------------------------------------------------------------------------------------------------


; Open Powerpoint Live Edit Window
;RControl &  Left::
Numpad6::
    if WinExist("ahk_class PPTFrameClass")
    WinActivate,
    WinMaximize,
Return


; Mouse Wheel ------------------------------------------------------------------------------------------------------------------------------


; Mouse Wheel Up 2 %
Numpad7:: MouseClick,WheelUp,,,2,0,D,R

; Mouse Wheel Down 2 %
Numpad8:: MouseClick,WheelDown,,,2,0,D,R


; EasyWorship ------------------------------------------------------------------------------------------------------------------------------

; Go 2nd Slide in EasyWorship (Hymn Lyrics Start Slide)
SetTitleMatchMode, 2
#IfWinActive EasyWorship
Numpad5::Send "{2}{Enter}"

























