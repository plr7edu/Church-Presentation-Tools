@echo off
setlocal

REM Set your source and destination paths
set "source=C:\Church-Presentation-Tools\Files\"  REM %~dp0 represents the current directory
set "destination=%HOMEPATH%\Desktop\"
set "filename=Sunday Mass.ewsx"

REM Use xcopy to copy and replace the file
sudo xcopy "%source%%filename%" "%destination%" /y

REM Check if the copy was successful
if %errorlevel% equ 0 (
    echo File copied successfully!
) else (
    echo Error occurred during copy.
)

endlocal
pause

