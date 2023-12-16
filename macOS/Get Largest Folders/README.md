# Get Largest Folders (macOS)

## Background

A one line Bash script that lists the ten largests directories in a Mac's home folder. While GUI tools such as [Disk Inventory X](http://www.derlien.com/) are recommended, this script can be used when you need a quick analysis, or if a computer's disk is so full that you cannot download an app to analyze the disk usage.

Original script taken from [this article](https://macmost.com/using-terminal-to-find-large-files-and-folders.html).

Note that `-I Library -I .Trash` part is meant to exclude those two directories. Otherwise you will see some `Operation not permitted` and `Permission denied` errors before the script returns the largest directories.

## Usage

- Copy the one line and paste it into your command line interface. Be sure to change the `first.last` part of the path to the name of the computer's home folder.
  - If you want to narrow your search to be more specific than the home folder, update the path accordingly.
- If you would like to list a different number than 10 directories, change the `-n10` argument at the end.
