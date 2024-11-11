@echo off

title Kill Church Presentation

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

if not "%1"=="max" start /max cmd /c %0 max & Exit /b
chcp 65001 > nul
color 0C
::: _  ___ _ _    ____ _                    _                 
:::| |/ (_) | |  / ___| |__  _   _ _ __ ___| |__              
:::| ' /| | | | | |   | '_ \| | | | '__/ __| '_ \             
:::| . \| | | | | |___| | | | |_| | | | (__| | | |            
:::|_|\_\_|_|_|  \____|_| |_|\__,_|_|  \___|_| |_|            
::: ____                           _        _   _             
:::|  _ \ _ __ ___  ___  ___ _ __ | |_ __ _| |_(_) ___  _ __  
:::| |_) | '__/ _ \/ __|/ _ \ '_ \| __/ _` | __| |/ _ \| '_ \ 
:::|  __/| | |  __/\__ \  __/ | | | || (_| | |_| | (_) | | | |
:::|_|   |_|  \___||___/\___|_| |_|\__\__,_|\__|_|\___/|_| |_|    
for /f "delims=: tokens=*" %%x in ('findstr /b ::: "%~f0"') do @echo(%%x
chcp 1252 > nul
Echo.
Echo.

:: Kill Key Manager 
taskkill /F /IM keymanager.exe /T > nul

:: Kill "Autohotkey Scripts" 
taskkill /F /IM AutoHotkeyU64.exe /T > nul

:: Kill EasyWorship7 & EasyWorshop7 Helper
taskkill /F /IM EasyWorship.exe /T > nul
taskkill /F /IM EasyWorshipHelper.exe /T > nul

:: Kill Unified Remote
taskkill /F /IM RemoteServerWin.exe /T > nul

:: Close all virtual desktop
::Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Remove-alldesktops.ps1

:: Close active virtual desktop using "VD.ahk"
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Scripts\Windows-Virtual-Desktop-Switcher\VD.ahk\VD-examples-remove-virutal-dekstops.ahk

:: Kill WindowManager
::taskkill /F /IM WindowManager.exe /T > nul

:: Kill Powerpoint Presentation
taskkill /F /IM POWERPNT.exe /T > nul

::@pause
