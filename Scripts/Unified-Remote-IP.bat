@echo off

:: =========================================================== 
:: Date   : 2024-11-15-18.42.00
:: Author : plr 
:: Script : Admin Church Presentation 
:: Github : https://github.com/plr7edu/
:: ===========================================================

title Unified-Remote-IP

:: Start Unified Remote
START C:\"Program Files (x86)"\"Unified Remote 3"\RemoteServerWin.exe

:: Go Unified Remote Server Addresses with Microsoft Edge 
START msedge http://localhost:9510/web/#/status/addresses
