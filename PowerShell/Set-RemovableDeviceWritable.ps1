Clear-Host

# Registry values
$registryFVE = "HKLM:\SYSTEM\CurrentControlSet\Policies\Microsoft\FVE"
$RDVvalueName = "RDVDenyWriteAccess"
$FDVvalueName = "FDVDenyWriteAccess"
$valueData = 1


# Process of Value creation

$processStatusR = New-ItemProperty -Path $registryFVE `
                                   -Name $RDVvalueName `
                                   -PropertyType DWord `
                                   -Value $valueData `
                                   -Force

$processStatusF = New-ItemProperty -Path $registryFVE `
                                   -Name $FDVvalueName `
                                   -PropertyType DWord `
                                   -Value $valueData `
                                   -Force


if ($processStatusR.RDVDenyWriteAccess -eq 0 -and $processStatusF.FDVDenyWriteAccess -eq 0){
    Write-Host "Done, reboot..."
}


Write-Host "Suspending bitlocker..."
$blStatus = Suspend-BitLocker -MountPoint c -RebootCount 1


if ($blStatus.ProtectionStatus -eq "Off"){
    Write-Host "Okay to reboot"
    $rebootPeriod = Read-Host -Prompt "Would you like to shut down now or in 10 minutes?`n    [N]now or [l]ater"

    if ($rebootPeriod -eq "" -or $rebootPeriod.ToLower() -eq "n"){
        Write-Host "Shutting down now..."
        shutdown -r -t 0
    } elseif ($rebootPeriod.ToLower() -eq "l"){
        Write-Host "Shutting down in 10 minutes"
        shutdown -r -t 600 -c "You have choosen to reboot in 10 minutes`n`nPlease ensure all work is saved and closed`nprior to reboot."
        }

} else {
    Write-Host "Something went wrong, please check"
    }
