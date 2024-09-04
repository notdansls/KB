# PowerShell

## Contents
- Pending.
- Pending..
- Pending...


## Examples
### Update Powershell
A guide how to update PowerShell [here](UpdatePS.md)
### Registry
``` PowerShell
Read-Host -Prompt "Hello"
```

### Get File version
The command below gets the file version for a requested file.
```PowerShell
$FileVersion = Read-Host -Prompt "What file do you want the version of?"; (Get-Item $FileVersion).VersionInfo
```
