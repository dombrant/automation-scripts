# Promote User to Admin

This is a PowerShell script from Aaron that promotes a user to an admin on an Azure AD-joined machine. This works even if the user has never logged into the machine before.

## Instructions

To run this script locally (rather than running it via an Intune policy), open a PowerShell instance as an admin, paste in the script and hit enter to run. **NOTE:** Right clicking the script to run it is usually unsuccessful. Open the Start menu and run PowerShell as an admin instead.

## Notes

- You will only see a message appear afterwards if there was an error.
- This script is supposed to automatically pull the current logged in user's Azure username (i.e. their full email address). If that part of the script seems to not be working or if you just need to run this as a one line command locally on a device, here is an example of how it can be called with the user's Azure username entered manually:
  `Add-LocalGroupMember -Group "Administrators" -Member "AzureAD\first.last@email.com"`
- And here is an example of how it can be called on a domain joined PC:
  `Add-LocalGroupMember -Group "Administrators" -Member "domain\first.last"`
