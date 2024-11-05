@echo off

:: Start Unified Remote
START C:\"Program Files (x86)"\"Unified Remote 3"\RemoteServerWin.exe

:: Go Unified Remote Server Addresses with Microsoft Edge 
START msedge http://localhost:9510/web/#/status/addresses
