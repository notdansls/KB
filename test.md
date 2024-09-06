Test code to check
```PowerShell
function Get-UpgradableApps
{
  param ([string]$AppId)
    # Dump WinGet results into $WinGetResult
    $WinGetResult = winget list --id $AppId -e --update-available
    
    # Process the output to create a custom PowerShell object
    $upgradableApp = $WinGetResult | ForEach-Object
    {
        $columns = $_ -split '\s{2,}' # Split by two or more spaces
        if ($columns.Count -ge 3)
        {
          [PSCustomObject]@{
            Name = $columns[0]
            InstalledVersion = $columns[1]
            UpgradableVersion = $columns[2]
          }
        }
    }
    return $upgradableApp
}

function Update-App
{
  param ([string]$AppId)
    # Update using $Appid
    winget upgrade --id $AppId
}
  
# Replace this with imported list in time to come. Using Edge as an Example
$appId = "Microsoft.Edge"

# Use function Get-UpgradableApps to find apps... not sure this is going to work....
$upgradableApp = Get-UpgradableApps -AppId $appId

# Check if an update is available and update the app
if ($upgradableApp.UpgradableVersion -ne $upgradableApp.InstalledVersion)
{
  Update-App -AppId $appId
} else {
  Write-Host "No updates available for $appId"
}
```
