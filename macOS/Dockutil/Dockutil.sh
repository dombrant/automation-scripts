#!/bin/zsh

# Original script taken from: https://community.jumpcloud.com/t5/community-scripts/using-dockutil-to-set-a-user-s-dock/m-p/1897

# Check if dockutil is installed, if not throw an error
if [ ! command -v dockutil &>/dev/null ];
then
    echo "Dockutil not installed, ending script"
    exit 1
fi

# Variables to use script and set current logged in user dock
Killall="/usr/bin/killall"
LoggedInUser=$(ls -l /dev/console | awk '{print $3}')
LoggedInUserHome="/Users/$LoggedInUser"
UserPlist=$LoggedInUserHome/Library/Preferences/com.apple.dock.plist

################################################################################
# Use Dockutil to Modify Logged-In User's Dock
################################################################################
echo "Removing all items from the dock for the user $LoggedInUser..."
sudo -u $LoggedInUser dockutil --remove all --no-restart $UserPlist
echo "Creating new dock..."
sudo -u $LoggedInUser dockutil --add "/System/Applications/Launchpad.app" --no-restart $UserPlist
sudo -u $LoggedInUser dockutil --add "/System/Cryptexes/App/System/Applications/Safari.app" --no-restart $UserPlist
sudo -u $LoggedInUser dockutil --add "/Applications/Self Service.app" --no-restart $UserPlist
sudo -u $LoggedInUser dockutil --add "/Applications/Slack.app" --no-restart $UserPlist
sudo -u $LoggedInUser dockutil --add "/Applications/Microsoft Teams.app" --no-restart $UserPlist
sudo -u $LoggedInUser dockutil --add "/Applications/Microsoft Outlook.app" --no-restart $UserPlist
sudo -u $LoggedInUser dockutil --add "/Applications/Okta Verify.app" --no-restart $UserPlist
sudo -u $LoggedInUser dockutil --add "/System/Applications/System Settings.app" --no-restart $UserPlist
sudo -u $LoggedInUser dockutil --add "~/Downloads" --section others --view auto --display stack --sort datecreated --no-restart $UserPlist
echo "Restarting dock..."
sudo -u $LoggedInUser $Killall Dock

exit 0