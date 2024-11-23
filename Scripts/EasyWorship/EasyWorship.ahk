/*
███████  █████  ███████ ██    ██ ██     ██  ██████  ██████  ███████ ██   ██ ██ ██████
██      ██   ██ ██       ██  ██  ██     ██ ██    ██ ██   ██ ██      ██   ██ ██ ██   ██
█████   ███████ ███████   ████   ██  █  ██ ██    ██ ██████  ███████ ███████ ██ ██████
██      ██   ██      ██    ██    ██ ███ ██ ██    ██ ██   ██      ██ ██   ██ ██ ██
███████ ██   ██ ███████    ██     ███ ███   ██████  ██   ██ ███████ ██   ██ ██ ██

*/

; ==========================================================================================================================================
; === START SETUP ==========================================================================================================================
; ==========================================================================================================================================

SetNumLockState, On                            ; Make Sure Numlock Enable

; === SYMBOLS ===
; !   <- Alt
; +   <- Shift
; ^   <- Ctrl
; #   <- Win
; For more, visit https://autohotkey.com/docs/Hotkeys.htm

; ==========================================================================================================================================
; === KEYBINDINGS & HOTKEYS ================================================================================================================
; ==========================================================================================================================================

; Black Screen  -------------------------------------------------------------------------------------------------------------------------------

Numpad0::
if WinExist("ahk_class TFormEZWorshipMain")
WinActivate,
Send, ^b
return

; EasyWorship ------------------------------------------------------------------------------------------------------------------------------

; Select Virutal Desktop 2 & Activate and Maximize EasyWorship Window
numpad2::
    if WinExist("EasyWorship")
    WinActivate,
    WinMaximize,
Return


; Go 2nd Slide in EasyWorship (Hymn Lyrics Start Slide)
SetTitleMatchMode, 2
#IfWinActive EasyWorship
Numpad4::Send "{2}{Enter}"

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

; Autohotkey Script ------------------------------------------------------------------------------------------------------------------------


; Pause / Resume Autohotkey Script
Numpad9::
Suspend ;Suspend Hotkeys off/on
Pause,, 1 ;Pause Script off/on
Return

; Exit Script
f4::Exitapp

