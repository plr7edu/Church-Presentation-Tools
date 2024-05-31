@echo off

:: Create a virtual desktop
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Tools\"Send Windows Key"\"SendWKey v1.1"\SendWKey.exe #{CTRLDOWN}D{CTRLUP}

:: Start "Windows Desktop Switcher" (Auto Hot Key Script)
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Scripts\"Windows Desktop Switcher"\"Windows 10"\desktop_switcher.ahk

:: Start Key Manager 
::START /min C:\"Program Files (x86)"\"ATNSOFT Key Manager"\keymanager.exe
"C:\Program Files\SkipUAC\SkipUAC.exe" /ID ywh

:: Open EasyWorship7
START C:\"Program Files (x86)"\Softouch\"EasyWorship 7"\EasyWorship.exe



