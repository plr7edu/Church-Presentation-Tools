@echo off

:: =========================================================== 
:: Date   : 2024-11-15-18.42.00
:: Author : plr 
:: Script : Admin Church Presentation 
:: Github : https://github.com/plr7edu/
:: ===========================================================

title Kill Unfied Remote Server

:: Kill Unified Remote
taskkill /F /IM RemoteServerWin.exe /T > nul
