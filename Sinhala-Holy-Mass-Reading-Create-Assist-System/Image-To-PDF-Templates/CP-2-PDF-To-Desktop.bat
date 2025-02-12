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
::Zh4grVQjdCyDJHqM4VAzIFZkXgGROWWuB6EV5+a22+WIrl4hZ+sxcI7X2/mmL+wKp2jlZoVg5H9bnMICC1Z7bBeqegp5iH1Rv3eRevSFoBvkR3S5wm19L2B5l2/RmC4oXPBY15FO4wSYsXnw0oEVwnPrUblAEHvkoQ==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal

set "source_file1=C:\Church-Presentation-Tools\Sinhala-Holy-Mass-Reading-Create-Assist-System\Image-To-PDF-Templates\Original-Bible-Reading-Book\Original Bible Reading Book - .pdf"
set "source_file2=C:\Church-Presentation-Tools\Sinhala-Holy-Mass-Reading-Create-Assist-System\Image-To-PDF-Templates\Sunday-Mass-Guide-Book\Sunday Mass Guide Book - .pdf"
set "desktop_folder=%USERPROFILE%\Desktop\Creating Sinhala Holy Mass Readings"
set "destination_file1=%desktop_folder%\Original Bible Reading Book - .pdf"
set "destination_file2=%desktop_folder%\Sunday Mass Guide Book - .pdf"

REM Check if the desktop folder exists, if not, create it
if not exist "%desktop_folder%" (
    mkdir "%desktop_folder%"
)

REM Copy the files and overwrite if they exist
copy /Y "%source_file1%" "%destination_file1%"
copy /Y "%source_file2%" "%destination_file2%"

echo Files copied and renamed successfully!
pause
