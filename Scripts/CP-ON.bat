:: Mute Windows Sound
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Tools\"Sound Volume View"\SoundVolumeView.exe /Mute Speaker

:: Set Maximum Brightness
powershell (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,100)

:: Set Live Wallpaper (Black Wallpaper)
Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Live-wallpaper.ps1

:: Enable Auto Hide Taskbar
Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Autohidetaskbar-enable.ps1

