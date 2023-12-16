#!/bin/bash

# Use the built in command to list all installed updates (macOS updates, rapid security response updates, app updates, etc.)
# Source: https://www.macosadventures.com/2023/03/01/how-to-identify-macos-update-history
/usr/sbin/system_profiler SPInstallHistoryDataType

# To search for a specific application's update history, follow the below example of using `grep`'s `-A` flag
# NOTE: you may have to adjust the argument passed after the `-A` flag 
# but 4 is the recommended number, as it will include the install date
# /usr/sbin/system_profiler SPInstallHistoryDataType | grep "Microsoft\ Teams" -A 4

# You can do the same to search for macOS updates:
# /usr/sbin/system_profiler SPInstallHistoryDataType | grep "macOS" -A 4