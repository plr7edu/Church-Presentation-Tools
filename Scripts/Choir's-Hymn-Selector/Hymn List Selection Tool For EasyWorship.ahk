Gui Font, s17 Bold cGreen, Segoe UI
Gui Add, Text, x4 y-1 w622 h38 +0x200, Press "Enter" Key to Open.
Gui Font
Gui Font, s35 Bold, Segoe UI
Gui, Add, ListBox, x0 y31 w620 h190 r3 vchoir gHandleEnter,Senior Choir||Sunday School Choir|Youth Choir
Gui, Add, Button, xm ym Hidden Default, OK
Gui Font
Gui Font, s16, Segoe UI
Gui Add, Text, x6 y223 w634 h34 +0x200, Use the Up Arrow and Down Arrow keys to navigate.
Gui Font
Gui Show, w620 h259, EasyWorship-HymnList-Selector
Return

; Handle pressing Enter key in the ListBox
HandleEnter:
If (A_GuiEvent = "DoubleClick")
{
    Gosub, ButtonOK
}
Return

; Handle pressing Enter key in the ListBox
#IfWinActive EasyWorship-HymnList-Selector
Enter::
Gui, Submit, NoHide
Gosub, ButtonOK
Return
#IfWinActive

ButtonOK:
Gui, Submit
If (choir = "Senior Choir"){
    Run, C:\Church-Presentation-Tools\Scripts\Choir's-Hymn-Selector\Senior-Choir.exe
}
If (choir = "Sunday School Choir"){
    Run, C:\Church-Presentation-Tools\Scripts\Choir's-Hymn-Selector\Sunday-School-Choir.exe
}
If (choir = "Youth Choir"){
    Run, C:\Church-Presentation-Tools\Scripts\Choir's-Hymn-Selector\Youth-Choir.exe
}

GuiClose:
ExitApp
