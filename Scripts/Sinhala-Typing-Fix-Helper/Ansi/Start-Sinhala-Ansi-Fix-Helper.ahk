;==== Set Icon In Taskbar  =============================================

; Define the path to your icon
iconPath := A_ScriptDir "\Sinhala-Ansi-Fix-Helper.ico"

; Set the icon for the script Menu, Tray, Icon,
Menu, Tray, Icon, %iconPath%

;=======================================================================

;Start Keyman
Run, "C:\Program Files\Sinhala KeyHelp\KeyHelp.exe"

; Enable Sinhala KeyHelp
;Send, {Ctrl down}{Alt down}{z down}
;return

; Alt + o = ඳ
!o:: Send, |
return

; Alt + ~ = ප්‍ර
!vkC0::
Send, `%
return

; Alt + . = ඟ
!.::
Send, Õ
return

; Alt + v  = ඬ
!v::
Send, ~
return

; Alt + 4  = “
!4::
Send, —
return

; Alt + 5  = ”
!5::
Send, ˜
return

; Alt + 6  = '
!6::
Send, Z
return