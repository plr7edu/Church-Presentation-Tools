::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJHqM4VAzIFZkXgGROWWuB6EV5+a22+WIrl4hZ+EtcZ/PyYirIfMK3Ur2Zp4kxkZ0ndxBJAJVcAHmXQw8rGpXumHIEsaPqjjuWFuB71t+Hn1x5w==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

:: Set desktop path
set "desktop=%USERPROFILE%\Desktop"
set "exePath=C:\Church-Presentation-Tools\Files\New-Hymns.exe"
set "filePath=%desktop%\now.ewsx"

:: Check if now.ewsx exists on the Desktop
if exist "%filePath%" (
    :: Exit silently
    exit /b
)

:: Run New-Hymns.exe to copy now.ewsx to the Desktop
"%exePath%"
echo New-Hymns.exe has been executed.

:: Wait for the file to be copied
timeout /t 5 /nobreak >nul

:: Check again if now.ewsx is now on the Desktop
if exist "%filePath%" (
    :: Open now.ewsx
    start "" "%filePath%"
    echo now.ewsx has been opened.
) else (
    echo Failed to copy now.ewsx to the Desktop.
)

pause
