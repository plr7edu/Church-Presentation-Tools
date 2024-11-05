@echo off

:: Date 2024-11-03-14.27.38

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
:::          ___  _____ _____ 
:::         / _ \|  ___|  ___|
::: _____  | | | | |_  | |_   
:::|_____| | |_| |  _| |  _|  
:::         \___/|_|   |_|    
:::                                                                                
:::  https://github.com/plr7edu/Church-Presentation-Tools                                                                                                                             
for /f "delims=: tokens=*" %%x in ('findstr /b ::: "%~f0"') do @echo(%%x
chcp 1252 > nul
Echo.
Echo.

:: Create an empty bar
for /l %%N in (0 1 !barLength!) do echo(!LF!%ESC%[2A%ESC%[%%NC%tbd%

:: Unmute Windows Sound
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Tools\"Sound Volume View"\SoundVolumeView.exe /Unmute Speaker >nul 2>&1
for /L %%N in (0 1 25 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 25 %% %TAB% Processing : Unmute Windows Sound                                                    !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  ping -4 -n 1 127.0.0.1 >nul
)

:: Set 10 % Brightness
powershell (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,10) >nul 2>&1
for /L %%N in (0 1 50 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 50 %% %TAB% Processing : Set Ten Precent Brightness                                                 !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  ping -4 -n 1 127.0.0.1 >nul
)


:: Set Inactive Wallpaper (Color Wallpaper)
Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Inactive-wallpaper.ps1 >nul 2>&1
for /L %%N in (0 1 75 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 75 %% %TAB% Processing : Set Random Cross Wallpaper                                              !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  ping -4 -n 1 127.0.0.1 >nul
)

:: Disable Auto Hide Taskbar
::Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Autohidetaskbar-disable.ps1
Start C:\Church-Presentation-Tools\Scripts\Src\TaskbarToggle.exe >nul 2>&1
for /L %%N in (0 1 25 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 25 %% %TAB% Processing : Disable Auto Hide Taskbar                                               !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  ping -4 -n 1 127.0.0.1 >nul
)

