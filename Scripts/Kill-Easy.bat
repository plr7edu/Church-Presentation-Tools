@echo off

:: =========================================================== 
:: Date   : 2024-11-15-18.42.00
:: Author : plr 
:: Script : Admin Church Presentation 
:: Github : https://github.com/plr7edu/
:: ===========================================================

title Kill-Easy

:: Kill EasyWorship7 & EasyWorshop7 Helper
taskkill /F /IM EasyWorship.exe /T > nul
taskkill /F /IM EasyWorshipHelper.exe /T > nul

:: Kill "Autohotkey Scripts" 
taskkill /F /IM AutoHotkeyU64.exe /T > nul
