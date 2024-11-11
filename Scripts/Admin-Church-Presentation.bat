@echo off

:: Date 2024-11-10-18.25.55

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
color 0A
:::    _    ____  __  __ ___ _   _                                                               
:::   / \  |  _ \|  \/  |_ _| \ | |                                                              
:::  / _ \ | | | | |\/| || ||  \| |  _____                                                       
::: / ___ \| |_| | |  | || || |\  | |_____|                                                      
:::/_/   \_\____/|_|  |_|___|_| \_|                                                              
:::  ____ _                    _       ____                           _        _   _             
::: / ___| |__  _   _ _ __ ___| |__   |  _ \ _ __ ___  ___  ___ _ __ | |_ __ _| |_(_) ___  _ __  
:::| |   | '_ \| | | | '__/ __| '_ \  | |_) | '__/ _ \/ __|/ _ \ '_ \| __/ _` | __| |/ _ \| '_ \ 
:::| |___| | | | |_| | | | (__| | | | |  __/| | |  __/\__ \  __/ | | | || (_| | |_| | (_) | | | |
::: \____|_| |_|\__,_|_|  \___|_| |_| |_|   |_|  \___||___/\___|_| |_|\__\__,_|\__|_|\___/|_| |_|
:::                                                                                       
:::  https://github.com/plr7edu/Church-Presentation-Tools                     ╔════════════════════╗
:::                                                                           ║     The System     ║
:::                                            ╔═══════════════╗              ║    was Developed   ║
:::                                            ║  The System   ║              ║      by PLR        ║
:::                                            ║ was Developed ║              ╚══════════════════o═╝
:::                                            ║   by PLR      ║─────────────────┘  
:::                                            ╚═══════════════╝                    
:::                                           /::::::::::::::::\
:::                                          /:::::════════:::::\ 
:::                                          ════════════════════  
for /f "delims=: tokens=*" %%x in ('findstr /b ::: "%~f0"') do @echo(%%x
chcp 1252 > nul
Echo.
Echo.

:: Create an empty bar
for /l %%N in (0 1 !barLength!) do echo(!LF!%ESC%[2A%ESC%[%%NC%tbd%

gsudo cache on >nul 2>&1

:: Pin WindowsTerminal Window to all Virtual Deskops using VirtualDesktop.exe (C++)
gsudo VirtualDesktop11-24H2.exe /q pa:WindowsTerminal
for /L %%N in (0 1 12 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 12 %% %TAB% Processing : Pin WindowsTerminal                                                     !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  ping -4 -n 1 127.0.0.1 >nul
)

:: Close all active virtual desktop
::Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Remove-alldesktops.ps1

:: Close all Virtual Desktops using VirtualDesktop.exe (C++)
gsudo VirtualDesktop11-24H2.exe /q /RemoveAll
for /L %%N in (0 1 24 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 24 %% %TAB% Processing : Close All Virtual Desktops                                              !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  ping -4 -n 1 127.0.0.1 >nul
)

:: Create 2 Virtual Desktops
::Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Create-2-virtual-desktops.ps1

:: Create 2 Virtual Desktops using “VD-examples.ahk”
::START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Scripts\"Windows Virtual Desktop Switcher"\VD.ahk\VD-examples-start-virutal-dekstops.ahk

:: Create 2 Virtual Desktops & Start "Desktop Switcher Script" 
gsudo START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Scripts\Windows-Virtual-Desktop-Switcher\Desktop-Switcher.ahk\Windows-11\desktop_switcher.ahk
for /L %%N in (0 1 36 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 36 %% %TAB% Processing : Create 2 Virtual Desktops, Open Switcher Script                        !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  ping -4 -n 1 127.0.0.1 >nul
)

:: Move to Second Virtual Desktop using VirtualDesktop Plugin
::Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Move-desktop-2.ps1

:: Move to Second Virtual Desktop using VirtualDesktop.exe (C++)
gsudo VirtualDesktop11-24H2.exe /q "-Switch:Desktop 2"
for /L %%N in (0 1 48 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 48 %% %TAB% Processing : Move to Second Virtual Desktop                                          !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  ping -4 -n 1 127.0.0.1 >nul
)

:: Start KeyManager 
::START /min C:\"Program Files (x86)"\"ATNSOFT Key Manager"\keymanager.exe
::gsudo "C:\Program Files\SkipUAC\SkipUAC.exe" /ID ywh
gsudo schtasks /Run /TN "\SkipUAC\KeyManager-Minimized" >nul 2>&1
for /L %%N in (0 1 60 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 60 %% %TAB% Processing : Start KeyManager                                                       !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  ping -4 -n 1 127.0.0.1 >nul
)

:: Start Unified Remote
gsudo START /min C:\"Program Files (x86)"\"Unified Remote 3"\RemoteServerWin.exe
for /L %%N in (0 1 72 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 72 %% %TAB% Processing : Start Unified Remote                                                   !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  ping -4 -n 1 127.0.0.1 >nul
)

:: Start WindowsManager
::START WindowManager.exe -MINIMIZE 

:: Start EasyWorship
gsudo START /max C:\"Program Files (x86)"\Softouch\"EasyWorship 7"\EasyWorship.exe
for /L %%N in (0 1 84 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 84 %% %TAB% Processing : Start EasyWorship                                                       !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  ping -4 -n 1 127.0.0.1 >nul
)

:: Unpin WindowsTerminal Window to all Virtual Deskops using VirtualDesktop.exe (C++)
gsudo VirtualDesktop11-24H2.exe /q upa:WindowsTerminal
for /L %%N in (0 1 100 %processValue%) do (
  set /a showBar=%%N*barLength/processValue
  echo %TAB% Percent : 100 %% %TAB% Processing : Unpin WindowsTerminal                                                  !LF!%ESC%[2A%ESC%[!showBar!C%bar%
  ping -4 -n 1 127.0.0.1 >nul
)

gsudo -k >nul 2>&1

::pause
exit
