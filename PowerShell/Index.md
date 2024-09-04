# PowerShell

## Contents
- Update Powershell
- Get File version
- Registry
- Ad User
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

### Ad User
I often use `Get-ADUser` but I get tired of having to write the whole command out each time.

The following is the standard command
```PowerShell
Get-ADUser -Server $ENV:USERDNSDOMAIN UserID
```

To inject a prompt so you only have to write or paste the user ID you can use the following. This will read the userid into the variable `$UserID`. The `;` seperates the commands so it can be run as a one liner.
```PowerShell
$UserID = Read-host -Prompt "Which user?"; Get-ADUser -Server $ENV:USERDNSDOMAIN $UserID
```

#### Example
```PowerShell
PS C:\Users\UserID> $UserID = Read-host -Prompt "Which user?"; Get-ADUser -Server $ENV:USERDNSDOMAIN $UserID
Which user?: UserID2

DistinguishedName : CN=2 User Name,OU=Department,OU=Site,DC=example,DC=com
Enabled           : True
GivenName         : User
Name              : 2 User Name
ObjectClass       : user
ObjectGUID        : 8d89b373-1ea8-49dd-93cc-a06cd592d4c7
SamAccountName    : UserID2
SID               : S-1-5-21-8d89b373-1ea8-49dd-93cc-a06cd592d4c7
Surname           : 2 User
UserPrincipalName : 2UserName@example.com
```
### Generate GUID
Did you know you can generate a **GUID** right within PowerShell... Of course you did...
```PowerShell
New-Guid
```

#### Example
```PowerShell
PS C:\Users\UserID> new-guid

Guid
----
8d89b373-1ea8-49dd-93cc-a06cd592d4c7
```

