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


@echo off

:: Kill Key Manager 
taskkill /F /IM keymanager.exe /T > nul

:: Kill "Windows Desktop Switcher" (Auto Hot Key Script)
taskkill /F /IM AutoHotkeyU64.exe /T > nul

:: Kill EasyWorship7 & EasyWorshop7 Helper
taskkill /F /IM EasyWorship.exe /T > nul

:: Close active virtual desktop
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Tools\"Send Windows Key"\"SendWKey v1.1"\SendWKey.exe #{CTRLDOWN}{F4}{CTRLUP}

:: Kill Powerpoint Presentation
taskkill /F /IM POWERPNT.exe /T > nul

::@pause
