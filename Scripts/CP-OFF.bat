:: Mute Volume
START %SYSTEMDRIVE%\CHURCH-PRESENTATION-TOOLS\Tools\"Sound Volume View"\SoundVolumeView.exe /Unmute Speaker

:: Set 10 % Brightness
powershell (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,10)

:: Set Inactive Wallpaper (Color Wallpaper)
Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Inactive-wallpaper.ps1

:: Disable Auto Hide Taskbar
Powershell.exe -executionpolicy remotesigned -File  C:\Church-Presentation-Tools\Scripts\Powershell-Functions\Autohidetaskbar-disable.ps1


