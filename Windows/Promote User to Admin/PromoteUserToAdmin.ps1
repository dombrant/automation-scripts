# Get the current logged in user's Azure username
$current_user = whoami.exe /UPN

<#
Wrap the variable reference in two sets of double quotes and backticks
This ensures the variable is called with double quotes around it (e.g. "first.last@email.com"), which is required
Source for this technique: https://stackoverflow.com/a/35309182
#>
Add-LocalGroupMember -Group "Administrators" -Member "AzureAD\`"$current_user`""