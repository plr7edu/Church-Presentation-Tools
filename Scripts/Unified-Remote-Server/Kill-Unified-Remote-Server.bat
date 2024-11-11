@echo off

title Kill Unfied Remote Server

:: Kill Unified Remote
taskkill /F /IM RemoteServerWin.exe /T > nul
