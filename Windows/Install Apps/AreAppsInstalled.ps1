# Check if Chrome is installed and if not, install it
# The below snippet for Chrome is from: https://stackoverflow.com/a/74548534
$chromePath = Test-Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe'

if($chromePath -eq $true){
   Write-Host "Chrome is installed" -ForegroundColor Green
}else{
   Write-Host "Chrome is not installed" -ForegroundColor Red
}

# Check if Firefox is installed and if not, install it
$firefoxPath = Test-Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\firefox.exe'

if($firefoxPath -eq $true){
   Write-Host "Firefox is installed" -ForegroundColor Green
}else{
   Write-Host "Firefox is not installed" -ForegroundColor Red
}

# Check if Zoom is installed and if not, install it
$zoomPath = Test-Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\zoom.exe'

if($zoomPath -eq $true){
   Write-Host "Zoom is installed" -ForegroundColor Green
}else{
   Write-Host "Zoom is not installed" -ForegroundColor Red
}