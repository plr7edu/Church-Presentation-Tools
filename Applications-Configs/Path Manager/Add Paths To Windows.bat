@echo off
setlocal

:: Check for administrative privileges
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo *** Requesting administrative privileges ***
    goto :UACPrompt
) else ( goto :gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0""", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"

REM Define paths
set path1=C:\Church-Presentation-Tools\Tools\Nircmd\nircmd-x64
set path2=C:\Church-Presentation-Tools\Scripts\Src
set path3=C:\MY-TOOLS\Platform Tools Android\SDK Platform Tools\platform-tools-latest-windows\platform-tools
set path4=C:\MY-TOOLS\Simple Http Server
set path5=%LocalAppData%\Programs\Espanso

REM Add paths to the system PATH variable
setx PATH "%path1%;%path2%;%path3%;%path4%;%path5%;%PATH%" /M

echo Paths added to the system PATH variable.
endlocal
pause
