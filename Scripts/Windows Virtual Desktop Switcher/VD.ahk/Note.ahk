;START of gui stuff
Gui,Font, s12, Segoe UI
explanation=
(
Numpad0 to pin this Window on all desktops
you can spam (Numpad2,Numpad1,Numpad2,Numpad1) for fun

here's a challenge (you might lose this window):
Unpin this using Numpad0
go to Desktop 3 (Numpad3)
this time, use Win + * on Numpad to come back to this window wherever you are
(and wherever this window is)
so you can move this window to desktop 2 (Numpad5), you go to desktop 1, and use Win + * on Numpad
(if you want to search in this script, the hotkey is #NumpadMult)

Numpad9 to throw a window to Desktop 3 (and not follow it)

getters:
f1 to see which desktop you currently are in
f6 to see which desktop this window is in
f2 to see the total number of virtual desktops

(You might want to pin this window for this part):
!NumpadAdd (Alt + Numpad+) to createDesktop and go to it
f1 to see which desktop you currently are in

but at this point, just use Win + Tab..
these functions are mostly for script only,
for example: I used VD.createUntil(3)
at the start of this tutorial, to make sure we have at least 3 VD

^+NumpadAdd (Ctrl Alt + Numpad+) to create until you have 3 desktops
!NumpadSub (Alt + Numpad-) to remove the current desktop
^+NumpadSub (Ctrl ALt + Numpad-) to delete the 3rd desktop

more below, look at the hotkeys in code.
)
gui, add, Edit, -vscroll -E0x200 +hwndHWndExplanation_Edit, % explanation ; https://www.autohotkey.com/boards/viewtopic.php?t=3956#p21359
;deselect edit text BY moving caret to start
Postmessage,0xB1,0,0,, % "ahk_id " HWndExplanation_Edit
gui, show,, VD.ahk examples WinTitle
;END of gui stuff