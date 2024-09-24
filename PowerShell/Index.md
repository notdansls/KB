> [Home](README.md) | **PowerShell** <
# PowerShell

## Contents
- [Projects](#projects)
- Update Powershell
- [Get File version](#get-file-version)
- [Registry](#registry)
   - [Wintrust](#wintrust-check)
- Ad User
- [Ad-User](#ad-user)
- [Install winget](#install-winget)
- [SMB](#smb)

## Projects
A collection of scripts I have created
[PowerShell projects](projects.md)

## Examples
### Update Powershell
A guide how to update PowerShell [here](UpdatePS.md)
### Registry
``` PowerShell
Read-Host -Prompt "Hello"
```


#### Wintrust check
```PowerShell
$wintrustKey64 = @{
    Path = 'HKLM:\Software\Microsoft\Cryptography\Wintrust\Config'
    Name = 'EnableCertPaddingCheck '
    PropertyType = 'String'
    Value = 1
}
New-ItemProperty @wintrustKey64
```

#### Check 64bit Wintrust
```PowerShell
$wintrustKey64Validation = "HKLM:\Software\Microsoft\Cryptography\Wintrust\"
Get-ChildItem -Path $wintrustKey64Validation -Recurse
```


#### Wintrust check (Wow6432Node)
```PowerShell
$wintrustKey32 = @{
    Path = 'HKLM:\Software\Wow6432Node\Microsoft\Cryptography\Wintrust\Config'
    Name = 'EnableCertPaddingCheck '
    PropertyType = 'String'
    Value = 1
}
New-ItemProperty @wintrustKey32
```

#### Check 32bit Wintrust
```PowerShell
$wintrustKey32Validation = "HKLM:\Software\Microsoft\Cryptography\Wintrust\"
Get-ChildItem -Path $wintrustKey32Validation -Recurse
```


<!--

  Get file version starts here

-->
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


### Install WinGet
blah
```PowerShell
Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe
```


### SMB
SMB is used to annoy you. Remove version one to make it more secure
Run the command `Get-SmbServerConfiguration | Select-Object EnableSMB1Protocol` to resolve a `True` to confirm SMB1 is enabled. 

#### Example
```PowerShell
PS C:\Users\UserID> Get-SmbServerConfiguration | Select-Object EnableSMB1Protocol

EnableSMB1Protocol
------------------
              True
```
You could also include EnableSMB2Protocol to ensure that a more secure version is enabled before disabling SMB1

#### Example
```PowerShell
PS C:\Users\UserID> Get-SmbServerConfiguration | Select-Object EnableSMB1Protocol, EnableSMB2Protocol

EnableSMB1Protocol EnableSMB2Protocol
------------------ ------------------
              True               True
```

Now we know its probably safe to disable SMB1

we do this using the command `Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol`. This ensures it is using neither the client or the server version of SMB1

#### Example
```PowerShell
PS C:\Users\UserID> Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol
Do you want to restart the computer to complete this operation now?
[Y] Yes  [N] No  [?] Help (default is "Y"): n


Path          :
Online        : True
RestartNeeded : True
```
A reboot will be required. Once Windows has rebooted you should get the following result
#### Example
```PowerShell
PS C:\Users\CJ2ZE13A> Get-SmbServerConfiguration | Select-Object EnableSMB1Protocol, EnableSMB2Protocol

EnableSMB1Protocol EnableSMB2Protocol
------------------ ------------------
                                 True
```

