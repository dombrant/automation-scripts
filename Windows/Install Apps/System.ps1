$64Bit = (Get-WmiObject -Class Win32_ComputerSystem).SystemType -match "(x64)"

if ($os_type -eq "True") {
    Write-Host "i am an 64bit OS"
    write-host $os_type }
else {
    # $os_type = (Get-WmiObject -Class Win32_ComputerSystem).SystemType -match ‘(x86)’

#    if ($os_type -eq "True") {
    Write-Host "i am a 32 Bit OS" }    