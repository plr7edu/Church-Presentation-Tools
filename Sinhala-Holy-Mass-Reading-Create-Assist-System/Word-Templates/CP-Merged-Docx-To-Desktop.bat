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
::Zh4grVQjdCyDJHqM4VAzIFZkXgGROWWuB6EV5+a22+WIrl4hZ+sxcI7X2/mmL+wKp2jlZoVg5H9bnMICC1Z7bBeqegp5iH1Rv3eRevSFoBvkR3S+6Vk0VlFxinPcjT8+c+9Lqo4u1jK5+Umyu6oTyTXLUeQqEHDq1aN4dswY+Go=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal

set "source_file=C:\Church-Presentation-Tools\Sinhala-Holy-Mass-Reading-Create-Assist-System\Word-Templates\merged_document_with_page_breaks.docx"
set "desktop_folder=%USERPROFILE%\Desktop\Creating Sinhala Holy Mass Readings"
set "destination_file=%desktop_folder%\Merged-Holy-Mass-Readings-With-Page-Breaks.docx"

REM Check if the desktop folder exists, if not, create it
if not exist "%desktop_folder%" (
    mkdir "%desktop_folder%"
)

REM Copy the file and rename it
copy "%source_file%" "%destination_file%"

echo File copied and renamed successfully!
pause
