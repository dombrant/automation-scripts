# Dockutil

## Background

This is a script that leverages [dockutil](https://github.com/kcrawford/dockutil) to set the dock items on a Mac. Intended to be used via MDM during or immediately after automated device enrollment (ADE). Because it is intended to be used via MDM, the commands in the script are all ran as the current logged in user, or else they will be ran as the root user and will fail to execute properly.

The original script was taken from [this JumpCloud forum post](https://community.jumpcloud.com/t5/community-scripts/using-dockutil-to-set-a-user-s-dock/m-p/1897) and heavily modified. Please note that this script **does not** install Dockutil, as it will exit with code `1` if it is not installed.

## Usage

As mentioned above, this script is intended to be used via MDM. After copying and modifying the script to your needs, paste or upload it to your MDM service and run it accordingly. In this example, we are first clearing the current dock layout, adding shortcuts to commonplace applications including Self Service, Slack, and Okta Verify, additionally adding a shortcut to the Downloads folder, and finally restarting the dock.
