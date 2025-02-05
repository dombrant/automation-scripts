# Source: https://dev.to/terminalpuncher/preventing-lock-screen-timeout-when-idle-using-powershell-1bhc

$WShell = New-Object -Com Wscript.Shell
while (1) {$WShell.SendKeys("{SCROLLLOCK}"); sleep 60}