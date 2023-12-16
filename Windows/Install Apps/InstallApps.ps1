# Check if Chrome is installed and if not, install it
# The below snippet for checking if Chrome is installed is from: https://stackoverflow.com/a/74548534
$ChromePath = Test-Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe'

if($ChromePath -eq $true){
   Write-Host "Chrome is installed" -ForegroundColor Green
}else{
   Write-Host "Chrome is not installed" -ForegroundColor Red
   # The lines below for installing Chrome are adapted from the Firefox code
   $LocalTempDir = $env:TEMP; $ChromeInstaller = "ChromeSetup.exe"; (new-object    System.Net.WebClient).DownloadFile('http://dl.google.com/chrome/install/375.126/chrome_installer.exe', "$LocalTempDir\$ChromeInstaller"); & "$LocalTempDir\$ChromeInstaller" /silent /install; $Process2Monitor =  "ChromeInstaller"; Do { $ProcessesFound = Get-Process | Where-Object{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$ChromeInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound)
   $SourceURL = "http://dl.google.com/chrome/install/375.126/chrome_installer.exe";
   $Installer = $env:TEMP + "\ChromeInstaller.exe"; 
   Write-Host "Downloading Chrome"
   Invoke-WebRequest $SourceURL -OutFile $Installer;
   Write-Host "Installing Chrome"
   Start-Process -FilePath $Installer -Args "/s" -Verb RunAs -Wait;
   Write-Host "Chrome installed successfully" -ForegroundColor Green
   Remove-Item $Installer;

}

# Check if Firefox is installed and if not, install it
$FirefoxPath = Test-Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\firefox.exe'

if($FirefoxPath -eq $true){
   Write-Host "Firefox is installed" -ForegroundColor Green
}else{
   Write-Host "Firefox is not installed" -ForegroundColor Red
   # The lines below for installing Firefox are from: https://gmusumeci.medium.com/unattended-install-of-firefox-browser-using-powershell-6841a7742f9a
   $SourceURL = "https://download.mozilla.org/?product=firefox-msi-latest-ssl&os=win64&lang=en-US";
   $Installer = $env:TEMP + "\Firefox Installer.exe";
   Write-Host "Downloading Firefox"
   Invoke-WebRequest $SourceURL -OutFile $Installer;
   Write-Host "Installing Firefox"
   Start-Process -FilePath $Installer -Args "/s" -Verb RunAs -Wait;
   Write-Host "Firefox installed succesfully" -ForegroundColor Green
   Remove-Item $Installer;
}

# Check if CPU is 64 bit or ARM
$64Bit = (Get-WmiObject -Class Win32_ComputerSystem).SystemType -match "(x64)"
# By default set the download URL for Zoom to the 64 bit version because most of our machines are 64 bit
# with the if statement below, it will changeg to the URL for the ARM version if the CPU is not 64 bit
$ZoomURL = "https://zoom.us/client/5.13.7.12602/ZoomInstallerFull.exe?archType=x64"
if ($64Bit -eq $false) {
   $ZoomURL = "https://zoom.us/client/5.13.7.12602/ZoomInstallerFull.exe?archType=winarm64"
}

# Check if Zoom is installed and if not, install it
$ZoomPath = Test-Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\zoom.exe'

if($ZoomPath -eq $true){
   Write-Host "Zoom is installed" -ForegroundColor Green
}else{
   Write-Host "Zoom is not installed" -ForegroundColor Red
   # The lines below for installing Zoom are adapted from the Firefox code
   $SourceURL = $ZoomURL;
   $Installer = $env:TEMP + "ZoomInstallerFull.exe";
   Write-Host "Downloading Zoom"
   Invoke-WebRequest $SourceURL -OutFile $Installer;
   Write-Host "Installing Zoom"
   Start-Process -FilePath $Installer -Args "/s" -Verb RunAs -Wait;
   Write-Host "Zoom installed succesfully" -ForegroundColor Green
   Remove-Item $Installer;
}