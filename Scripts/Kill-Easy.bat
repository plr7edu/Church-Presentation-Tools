@echo off

:: Kill EasyWorship7 & EasyWorshop7 Helper
taskkill /F /IM EasyWorship.exe /T > nul
taskkill /F /IM EasyWorshipHelper.exe /T > nul

:: Kill "Autohotkey Scripts" 
taskkill /F /IM AutoHotkeyU64.exe /T > nul