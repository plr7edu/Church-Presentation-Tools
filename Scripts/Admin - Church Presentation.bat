@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

@echo off

echo "     __    ___ ____  __ ____  ______    __      ___    ___  ____   __ __  __   ___    ";
echo "    (( \  //   || \\ || || \\ | || |    ||     // \\  // \\ || \\  || ||\ ||  // \\   ";
echo "     \\  ((    ||_// || ||_//   ||      ||    ((   )) ||=|| ||  )) || ||\\|| (( ___   ";
echo "    \_))  \\__ || \\ || ||      ||      ||__|  \\_//  || || ||_//  || || \||  \\_||   ";
echo "                                                                                      ";

:: Close all active virtual desktop
Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Remove-alldesktops.ps1

:: Create 2 Virtual Desktops
::Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Create-2-virtual-desktops.ps1

:: Create 2 Virtual Desktops using “VD-examples.ahk”
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Scripts\"Windows Virtual Desktop Switcher"\VD.ahk\VD-examples-start-virutal-dekstops.ahk

:: Start "Desktop Switcher Script" 
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Scripts\"Windows Virtual Desktop Switcher"\Desktop-Switcher.ahk\Windows-11\desktop_switcher.ahk

:: Move to Second Virtual Desktop
Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Move-desktop-2.ps1

:: Start EasyWorship
START /max C:\"Program Files (x86)"\Softouch\"EasyWorship 7"\EasyWorship.exe

:: Start Key Manager 
::START /min C:\"Program Files (x86)"\"ATNSOFT Key Manager"\keymanager.exe
"C:\Program Files\SkipUAC\SkipUAC.exe" /ID ywh

::Start Unified Remote
START /min C:\"Program Files (x86)"\"Unified Remote 3"\RemoteServerWin.exe



