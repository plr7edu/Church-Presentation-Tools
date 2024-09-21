/*

██████  ███████ ███████ ██   ██ ████████  ██████  ██████      ███████ ██     ██ ██ ████████  ██████ ██   ██ ███████ ██████      ██    ██ ███████ ███████ ██████       ██████  ██████  ███    ██ ███████ ██  ██████
██   ██ ██      ██      ██  ██     ██    ██    ██ ██   ██     ██      ██     ██ ██    ██    ██      ██   ██ ██      ██   ██     ██    ██ ██      ██      ██   ██     ██      ██    ██ ████   ██ ██      ██ ██
██   ██ █████   ███████ █████      ██    ██    ██ ██████      ███████ ██  █  ██ ██    ██    ██      ███████ █████   ██████      ██    ██ ███████ █████   ██████      ██      ██    ██ ██ ██  ██ █████   ██ ██   ███
██   ██ ██           ██ ██  ██     ██    ██    ██ ██               ██ ██ ███ ██ ██    ██    ██      ██   ██ ██      ██   ██     ██    ██      ██ ██      ██   ██     ██      ██    ██ ██  ██ ██ ██      ██ ██    ██
██████  ███████ ███████ ██   ██    ██     ██████  ██          ███████  ███ ███  ██    ██     ██████ ██   ██ ███████ ██   ██      ██████  ███████ ███████ ██   ██      ██████  ██████  ██   ████ ██      ██  ██████

*/

; ==========================================================================================================================================
; === START SETUP ==========================================================================================================================
; ==========================================================================================================================================

SetNumLockState, On                            ; Make Sure Numlock Enable

; ==========================================================================================================================================
; === INCLUDE THE LIBRARY ==================================================================================================================
; ==========================================================================================================================================

#Include <FindText>                            ; Add FindText V1

; ====================
; === INSTRUCTIONS ===
; ====================
; 1. Any lines starting with ; are ignored
; 2. After changing this config file run script file "desktop_switcher.ahk"
; 3. Every line is in the format HOTKEY::ACTION

; === SYMBOLS ===
; !   <- Alt
; +   <- Shift
; ^   <- Ctrl
; #   <- Win
; For more, visit https://autohotkey.com/docs/Hotkeys.htm

; === EXAMPLES ===
; !n::switchDesktopToRight()             <- <Alt> + <N> will switch to the next desktop (to the right of the current one)
; #!space::switchDesktopToRight()        <- <Win> + <Alt> + <Space> will switch to next desktop
; CapsLock & n::switchDesktopToRight()   <- <CapsLock> + <N> will switch to the next desktop (& is necessary when using non-modifier key such as CapsLock)

; ===========================
; === END OF INSTRUCTIONS ===
; ===========================

; ==========================================================================================================================================
; === KEYBINDINGS & HOTKEYS ================================================================================================================
; ==========================================================================================================================================


CapsLock & 1::switchDesktopByNumber(1)
CapsLock & 2::switchDesktopByNumber(2)
CapsLock & 3::switchDesktopByNumber(3)
CapsLock & 4::switchDesktopByNumber(4)
CapsLock & 5::switchDesktopByNumber(5)
CapsLock & 6::switchDesktopByNumber(6)
CapsLock & 7::switchDesktopByNumber(7)
CapsLock & 8::switchDesktopByNumber(8)
CapsLock & 9::switchDesktopByNumber(9)


; Select Virtual Desktop -------------------------------------------------------------------------------------------------------------------

; Select Virutal Desktop 1 & Activate and Maximize PowerPoint Presenter View Window & Double click on text called "Next" on that Window
numpad1::
    switchDesktopByNumber(1),
    if WinExist("ahk_class PodiumParent")
    WinActivate,
    WinMaximize,

Text:="|<>*90$43.3wzzzznUyTzzztmTDzzzwt7bsCD00nnlnXbCQttwtbbCAsySHnbaQzD3tnlC07nwtwbDzkyQz3bzsDCTVtztbbDswSttlbwTUMwQ8"

if (ok:=FindText(X, Y, 1320-150000, 104-150000, 1320+150000, 104+150000, 0, 0, Text))
{
   FindText().Click(X, Y, "L")
}

Return


; Select Virutal Desktop 2 & Activate and Maximize EasyWorship Window
numpad2::
    switchDesktopByNumber(2),
    if WinExist("EasyWorship")
    WinActivate,
    WinMaximize,
Return


; Select Virutal Desktop 3
Numpad3::switchDesktopByNumber(3)


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
Numpad6::
    if WinExist("ahk_class PPTFrameClass")
    WinActivate,
    WinMaximize,
Return

; Minimize Easy Worship And Show Live Output (Full Screen)
;Numpad5::
;    if WinExist("EasyWorship")
;    WinMinimize,
;Return

; Open EasyWorship Live Output (Full Screen)
Numpad5::
    if WinExist("ahk_class TForm_LiveOutput")
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
Numpad4::Send "{2}{Enter}"



CapsLock & Numpad4::switchDesktopByNumber(4)
CapsLock & Numpad5::switchDesktopByNumber(5)
CapsLock & Numpad6::switchDesktopByNumber(6)
CapsLock & Numpad7::switchDesktopByNumber(7)
CapsLock & Numpad8::switchDesktopByNumber(8)
CapsLock & Numpad9::switchDesktopByNumber(9)

CapsLock & n::switchDesktopToRight()
CapsLock & p::switchDesktopToLeft()
CapsLock & s::switchDesktopToRight()
CapsLock & a::switchDesktopToLeft()
CapsLock & tab::switchDesktopToLastOpened()

CapsLock & c::createVirtualDesktop()
CapsLock & d::deleteVirtualDesktop()

CapsLock & q::MoveCurrentWindowToDesktop(1)
CapsLock & w::MoveCurrentWindowToDesktop(2)
CapsLock & e::MoveCurrentWindowToDesktop(3)
CapsLock & r::MoveCurrentWindowToDesktop(4)
CapsLock & t::MoveCurrentWindowToDesktop(5)
CapsLock & y::MoveCurrentWindowToDesktop(6)
CapsLock & u::MoveCurrentWindowToDesktop(7)
CapsLock & i::MoveCurrentWindowToDesktop(8)
CapsLock & o::MoveCurrentWindowToDesktop(9)

CapsLock & Right::MoveCurrentWindowToRightDesktop()
CapsLock & Left::MoveCurrentWindowToLeftDesktop()

; === INSTRUCTIONS ===
; Below is the alternate key configuration. Delete symbol ; in the beginning of the line to enable.
; Note, that  ^!1  means "Ctrl + Alt + 1" and  ^#1  means "Ctrl + Win + 1"
; === END OF INSTRUCTIONS ===

; ^!1::switchDesktopByNumber(1)
; ^!2::switchDesktopByNumber(2)
; ^!3::switchDesktopByNumber(3)
; ^!4::switchDesktopByNumber(4)
; ^!5::switchDesktopByNumber(5)
; ^!6::switchDesktopByNumber(6)
; ^!7::switchDesktopByNumber(7)
; ^!8::switchDesktopByNumber(8)
; ^!9::switchDesktopByNumber(9)

; ^!Numpad1::switchDesktopByNumber(1)
; ^!Numpad2::switchDesktopByNumber(2)
; ^!Numpad3::switchDesktopByNumber(3)
; ^!Numpad4::switchDesktopByNumber(4)
; ^!Numpad5::switchDesktopByNumber(5)
; ^!Numpad6::switchDesktopByNumber(6)
; ^!Numpad7::switchDesktopByNumber(7)
; ^!Numpad8::switchDesktopByNumber(8)
; ^!Numpad9::switchDesktopByNumber(9)

; ^!n::switchDesktopToRight()
; ^!p::switchDesktopToLeft()
; ^!s::switchDesktopToRight()
; ^!a::switchDesktopToLeft()
; ^!tab::switchDesktopToLastOpened()

; ^!c::createVirtualDesktop()
; ^!d::deleteVirtualDesktop()

; ^#1::MoveCurrentWindowToDesktop(1)
; ^#2::MoveCurrentWindowToDesktop(2)
; ^#3::MoveCurrentWindowToDesktop(3)
; ^#4::MoveCurrentWindowToDesktop(4)
; ^#5::MoveCurrentWindowToDesktop(5)
; ^#6::MoveCurrentWindowToDesktop(6)
; ^#7::MoveCurrentWindowToDesktop(7)
; ^#8::MoveCurrentWindowToDesktop(8)
; ^#9::MoveCurrentWindowToDesktop(9)

; ^#Numpad1::MoveCurrentWindowToDesktop(1)
; ^#Numpad2::MoveCurrentWindowToDesktop(2)
; ^#Numpad3::MoveCurrentWindowToDesktop(3)
; ^#Numpad4::MoveCurrentWindowToDesktop(4)
; ^#Numpad5::MoveCurrentWindowToDesktop(5)
; ^#Numpad6::MoveCurrentWindowToDesktop(6)
; ^#Numpad7::MoveCurrentWindowToDesktop(7)
; ^#Numpad8::MoveCurrentWindowToDesktop(8)
; ^#Numpad9::MoveCurrentWindowToDesktop(9)

; ^#Right::MoveCurrentWindowToRightDesktop()
; ^#Left::MoveCurrentWindowToLeftDesktop()



; === INSTRUCTIONS ===
; Additional alternative shortcut for moving current window to left or right desktop (ctrl+shift+Win+left/right)
; === END OF INSTRUCTIONS ===

; ^#+Right::MoveCurrentWindowToRightDesktop()
; ^#+Left::MoveCurrentWindowToLeftDesktop()
