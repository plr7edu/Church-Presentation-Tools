@echo off

:: =========================================================== 
:: Date   : 2024-11-15-18.42.00
:: Author : plr 
:: Script : Admin Church Presentation 
:: Github : https://github.com/plr7edu/
:: ===========================================================

title Church Presentation - ON

SETLOCAL EnableDelayedExpansion

set /a "processValue=100"
set "bar=0xDB" Character used by progress bar (SUPPORTS HEX)
set "tbd=0xB0"
set "barLength=80"
( set LF=^
%=-----------DO NOT REMOVE THIS LINE. the LF variable is for future use in a function, it's currently useless-----------=%
)
FOR /F %%B in ('FORFILES /P "%~dp0." /M "%~nx0" /C "cmd /c echo(!bar!"') do set "bar=%%B"
FOR /F %%B in ('FORFILES /P "%~dp0." /M "%~nx0" /C "cmd /c echo(!tbd!"') do set "tbd=%%B"
FOR /F %%B in ('copy /Z "%~f0" nul') do set "CR=%%B"
FOR /F %%B in ('prompt $E ^& ^<nul cmd /k') do set "ESC=%%B"
for /l %%N in (0,1,%barLength%) do set "emptybar=!emptybar! "

if not "%1"=="max" start /max cmd /c %0 max & Exit /b
chcp 65001 > nul
color 6
:::   ____ _                    _       ____                           _        _   _             
:::  / ___| |__  _   _ _ __ ___| |__   |  _ \ _ __ ___  ___  ___ _ __ | |_ __ _| |_(_) ___  _ __  
::: | |   | '_ \| | | | '__/ __| '_ \  | |_) | '__/ _ \/ __|/ _ \ '_ \| __/ _` | __| |/ _ \| '_ \ 
::: | |___| | | | |_| | | | (__| | | | |  __/| | |  __/\__ \  __/ | | | || (_| | |_| | (_) | | | |
:::  \____|_| |_|\__,_|_|  \___|_| |_| |_|   |_|  \___||___/\___|_| |_|\__\__,_|\__|_|\___/|_| |_|
:::           ___  _   _                                                                          
:::          / _ \| \ | |                                                                         
:::  _____  | | | |  \| |                                                                         
::: |_____| | |_| | |\  |                                                                         
:::          \___/|_| \_|                                                                         
:::                                                                                                                   
:::  https://github.com/plr7edu/Church-Presentation-Tools                                                                                                                             
for /f "delims=: tokens=*" %%x in ('findstr /b ::: "%~f0"') do @echo(%%x
chcp 1252 > nul
Echo.
Echo.

:: Create an empty bar
for /l %%N in (0 1 !barLength!) do echo(!LF!%ESC%[2A%ESC%[%%NC%tbd%

:: Mute Windows Sound
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Tools\"Sound Volume View"\SoundVolumeView.exe /Mute Speaker >nul 2>&1
for /L %%N in (0 1 25 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 25 %% %TAB% Processing : Mute Windows Sound                                                      !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  ping -4 -n 1 127.0.0.1 >nul
)

:: Set Maximum Brightness
powershell (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,100) >nul 2>&1
for /L %%N in (0 1 50 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 50 %% %TAB% Processing : Set Maximum Brightness                                                  !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  @REM ping -4 -n 1 127.0.0.1 >nul
)

:: Set Live Wallpaper (Black Wallpaper)
Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Live-wallpaper.ps1 >nul 2>&1
for /L %%N in (0 1 75 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 75 %% %TAB% Processing : Set Live Black Wallpaper                                                !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  @REM ping -4 -n 1 127.0.0.1 >nul
)

:: Enable Auto Hide Taskbar
::Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Autohidetaskbar-enable.ps1 >nul 2>&1
Start C:\Church-Presentation-Tools\Scripts\Src\TaskbarToggle.exe >nul 2>&1
for /L %%N in (0 1 100 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 100 %% %TAB% Processing : Enable Auto Hide Taskbar                                                !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  @REM ping -4 -n 1 127.0.0.1 >nul
)

::pause
