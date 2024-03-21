@echo off

:: Initialization
title MetaTrader5 Environment
mode 45,13
color 80
cd /d "%~dp0"
echo.
echo Launcher Initialized...
echo.
echo.

:: Environment Setup
echo Setting Temporary Dirs..
SET TMP=.\temp
SET TEMP=.\temp
echo ..Temporary Directories Set.
echo.
timeout /t 1 /nobreak >nul

:: Launching MetaTrader 5 in Portable Mode
echo Launching MetaTrader Portable..
if exist ".\terminal64.exe" (
    start "" ".\terminal64.exe" /portable
    echo ..MetaTrader Portable Launched.
) else (
    echo ...terminal64.exe Missing!
    )
)
echo.
timeout /t 1 /nobreak >nul
goto EOF

:: Script Exit
:EOF
echo.
echo ...Script Complete.
timeout /t 5 /nobreak >nul
exit