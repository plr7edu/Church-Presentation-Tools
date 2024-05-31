REM --add the following to the top of your bat file--


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

:: Create a virtual desktop
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Tools\"Send Windows Key"\"SendWKey v1.1"\SendWKey.exe #{CTRLDOWN}D{CTRLUP}

:: Start "Windows Desktop Switcher" (Auto Hot Key Script)
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Scripts\"Windows Desktop Switcher"\"Windows 10"\desktop_switcher.ahk

:: Start Key Manager 
::START /min C:\"Program Files (x86)"\"ATNSOFT Key Manager"\keymanager.exe
"C:\Program Files\SkipUAC\SkipUAC.exe" /ID ywh

:: Open EasyWorship7
START C:\"Program Files (x86)"\Softouch\"EasyWorship 7"\EasyWorship.exe



