#!/bin/zsh

# First half of this line runs a built in command that lists a few attributes about the current system
# Second half of this line uses `awk` to grab just the macOS version number and the rapid security response version number
# Source (section 2 of this article): https://www.macosadventures.com/2023/05/03/three-ways-to-determine-if-macos-rapid-security-response-updates-have-been-installed-on-your-fleet/
/usr/sbin/system_profiler SPSoftwareDataType | awk -F ': ' '/System Version/ {print $2}'