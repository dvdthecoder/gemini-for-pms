@echo off
:: =============================================================
::  Gemini CLI for PMs — Windows Launcher
:: =============================================================
::  Double-click this file to run setup on Windows.
::  It opens PowerShell and runs setup.ps1.
:: =============================================================

echo.
echo   Gemini CLI for PMs — Setup
echo   Starting...
echo.

:: Check if PowerShell is available
where powershell >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo   ERROR: PowerShell not found.
    echo   Please install PowerShell from https://microsoft.com/powershell
    pause
    exit /b 1
)

:: Run the PowerShell setup script with execution policy bypass
powershell -ExecutionPolicy Bypass -File "%~dp0setup.ps1"

pause
