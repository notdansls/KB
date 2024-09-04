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

#### Example
```PowerShell
PS C:\Users\UserID> $FileVersion = Read-Host -Prompt "What file do you want the version of?"; (Get-Item $FileVersion).VersionInfo
What file do you want the version of?: C:\Users\UserID\AppData\Local\Microsoft\Teams\current\Teams.exe

ProductVersion   FileVersion      FileName
--------------   -----------      --------
1.5.00.8070      1.5.00.8070      C:\Users\UserID\AppData\Local\Microsoft\Teams\current\Teams.exe
```
