# Path to clean up
$path = "C:\Open\SysWOW64" #replace with relevent folder

# Dump a log file in the $path
$logFile = Join-Path $path "cleanupHistory.log"

# Set the relevent dates
$currentDate = '{0:yyyy-MM-dd}' -f (Get-Date)
$cutoff = '{0:yyyy-MM-dd}' -f (Get-Date).AddMonths(-1)

# Process all file objects within $path
Get-ChildItem -Path $path -File | ForEach-Object {
    $fileDate = '{0:yyyy-MM-dd}' -f $_.LastWriteTime
    
    if ( $cutoff -gt $fileDate ) {   
        $descriptionString = "$currentDate,Delete,$( $_.Name ),$fileDate" # Build log entry
        $descriptionString | Out-File -FilePath $logFile -Append          # Dump to log
        Remove-Item -Path $_.FullName -Force -WhatIf                      # Delete the selected file
    }
}
