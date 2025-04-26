#!/bin/zsh

# Use the `date` command to convert the output of the defaults command from epoch to human-readable
# Here the `defaults`` command is reading the "coverageEndDate" value in a plist file that contains the device's warranty expiration
# This version uses `awk` to remove the 1st, 4th, and 5th words which are the day of the week, time, and timezone (source: https://www.cyberciti.biz/faq/unix-linux-bsd-appleosx-skip-fields-command/)
# Then it uses `xargs` without any arguments passed to trim the whitespace (source: https://stackoverflow.com/a/12973694)
# To run this command and get the full output, simply remove the `awk` and `xargs` commands
date -r "$(defaults read ~/Library/Application\ Support/com.apple.NewDeviceOutreach/Warranty.plist coverageEndDate)" | awk '{ $1=""; $4=""; $5=""; print}' | xargs