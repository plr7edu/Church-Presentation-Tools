Gui, Font, s14, Segoe UI ; Windows 11 system font
Gui, Color, White
Gui, Add, Text, cBlack Center, Desktop 2
Gui, -Caption +AlwaysOnTop +ToolWindow
Gui, Show, NoActivate Center
Gui, +LastFound
WinMove, , , % (A_ScreenWidth - 200) // 2, % (A_ScreenHeight - 120) ; Centering the message above the taskbar with some gap

SetTimer, CloseGui, 5000 ; Set timer to close GUI and exit script after 5 seconds
return

CloseGui:
Gui, Destroy
ExitApp

GuiEscape:
GuiClose:
ExitApp
