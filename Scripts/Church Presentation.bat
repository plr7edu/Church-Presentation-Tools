@echo off

:: Start "Windows Virtual Desktop Switcher Script" (VD.ahk)
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Scripts\"Windows Virtual Desktop Switcher"\VD.ahk\VD-examples.ahk

:: Move to Second Virtual Desktop
Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Move-desktop-2.ps1

:: Start EasyWorship
:: START /max C:\"Program Files (x86)"\Softouch\"EasyWorship 7"\EasyWorship.exe
START C:\"Program Files (x86)"\Softouch\"EasyWorship 7"\EasyWorship.exe

:: Start Key Manager 
::START /min C:\"Program Files (x86)"\"ATNSOFT Key Manager"\keymanager.exe
"C:\Program Files\SkipUAC\SkipUAC.exe" /ID ywh

::Start Unified Remote
START /min C:\"Program Files (x86)"\"Unified Remote 3"\RemoteServerWin.exe

