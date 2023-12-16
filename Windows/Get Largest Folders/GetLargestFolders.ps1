Get-ChildItem C:\ -Directory -Recurse | Get-FolderSize | Sort-Object -Property TotalSize -Descending | Select-Object -First 10
