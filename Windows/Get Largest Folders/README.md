# Get Largest Folders (Windows)

## Background

A one line PowerShell script that lists the ten largests directories in PC's C drive. While GUI tools such as [WinDirStat](https://windirstat.net/) are recommended, this script can be used when you need a quick analysis, or if a computer's disk is so full that you cannot download an app to analyze the disk usage.

Original script taken from [this Reddit thread](https://www.reddit.com/r/PowerShell/comments/r51f72/comment/hmltwi6/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button).

## Usage

- Copy the one line and paste it into a PowerShell command line interface.
  - If you want to narrow your search to be more specific than the C drive, update the first argument accordingly.
- Note that if you searching the entire C drive, this script will take some time to run.
- If you would like to list a different number than 10 directories, change the `-First 10` argument at the end.
