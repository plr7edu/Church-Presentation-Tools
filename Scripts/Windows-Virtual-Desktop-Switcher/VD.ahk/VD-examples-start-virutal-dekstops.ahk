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

; ==========================================================================================================================================
; === START VIRTUAL DESKTOPS ===============================================================================================================
; ==========================================================================================================================================


VD.createUntil(3) ;create until we have at least 3 VD
ExitApp




