@echo off

if not "%1"=="max" start /max cmd /c %0 max & Exit /b
chcp 65001 > nul
color 0A
:::  ____            _       _     _       _                    _ _                     
::: / ___|  ___ _ __(_)_ __ | |_  (_)___  | |    ___   __ _  __| (_)_ __   __ _         
::: \___ \ / __| '__| | '_ \| __| | / __| | |   / _ \ / _` |/ _` | | '_ \ / _` |        
:::  ___) | (__| |  | | |_) | |_  | \__ \ | |__| (_) | (_| | (_| | | | | | (_| |  _ _ _ 
::: |____/ \___|_|  |_| .__/ \__| |_|___/ |_____\___/ \__,_|\__,_|_|_| |_|\__, | (_(_(_)
:::                   |_|                                                 |___/         
:::                                                                                                 
:::                                                                           ╔════════════════════╗
:::                                                                           ║     The system     ║
:::                                            ╔═══════════════╗              ║    was developed   ║
:::                                            ║  The system   ║              ║      by PLR        ║
:::                                            ║ was developed ║              ╚══════════════════o═╝
:::                                            ║   by PLR      ║─────────────────┘  
:::                                            ╚═══════════════╝                    
:::                                           /::::::::::::::::\
:::                                          /:::::════════:::::\ 
:::                                          ════════════════════ 
for /f "delims=: tokens=*" %%x in ('findstr /b ::: "%~f0"') do @echo(%%x
chcp 1252 > nul
Echo.
Echo.

Set "Path=C:\Church-Presentation-Tools\Scripts\Src"

::Pin WindowsTerminal Window to all Virtual Deskops using VirtualDesktop.exe (C++)
VirtualDesktop11-24H2.exe /q pa:WindowsTerminal
Call Progress 75 10 100

:: Close all active virtual desktop
::Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Remove-alldesktops.ps1

::Remove all Virtual Desktops using VirtualDesktop.exe (C++)
VirtualDesktop11-24H2.exe /q /RemoveAll
Call Progress 75 20 100

:: Create 2 Virtual Desktops
::Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Create-2-virtual-desktops.ps1
Call Progress 75 30 100

:: Create 2 Virtual Desktops using “VD-examples.ahk”
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Scripts\"Windows Virtual Desktop Switcher"\VD.ahk\VD-examples-start-virutal-dekstops.ahk
Call Progress 75 40 100

:: Start "Desktop Switcher Script" 
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Scripts\"Windows Virtual Desktop Switcher"\Desktop-Switcher.ahk\Windows-11\desktop_switcher.ahk
Call Progress 75 50 100

:: Move to Second Virtual Desktop using VirtualDesktop Plugin
::Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Move-desktop-2.ps1

:: Move to Second Virtual Desktop using VirtualDesktop.exe (C++)
VirtualDesktop11-24H2.exe /q "-Switch:Desktop 2"
Call Progress 75 60 100

:: Start EasyWorship
START /max C:\"Program Files (x86)"\Softouch\"EasyWorship 7"\EasyWorship.exe
Call Progress 75 70 100

:: Start Key Manager 
::START /min C:\"Program Files (x86)"\"ATNSOFT Key Manager"\keymanager.exe
"C:\Program Files\SkipUAC\SkipUAC.exe" /ID ywh
Call Progress 75 80 100

::Start Unified Remote
START /min C:\"Program Files (x86)"\"Unified Remote 3"\RemoteServerWin.exe
Call Progress 75 90 100

::Start WindowsManager
::START WindowManager.exe -MINIMIZE 

::Unpin WindowsTerminal Window to all Virtual Deskops using VirtualDesktop.exe (C++)
VirtualDesktop11-24H2.exe /q upa:WindowsTerminal
Call Progress 75 100 100

::pause
exit 
