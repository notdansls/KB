# Update PowerShell

1. Verify Powershell version by running `$PSVersionTable`. My version is 7.4.4.
   ``` PowerShell
   PS C:\Users\UserID> $PSVersionTable.PSVersion

   Major  Minor  Patch  PreReleaseLabel BuildLabel
   -----  -----  -----  --------------- ----------
   7      4      4
   ```

2. Like any other time, I prefer to use the PowerShell to everything I can.  We can use winget to update
   ```

3. This might not work for my Enterprise organisation, so trying WinGet instead
    i. Tried `winget install --id Microsoft.PowerShell --source winget` but got the error *A newer version was found, but the install technology is different from the current version installed. Please uninstall the package and install the newer version.* so tried `winget upgrade instead`
   ii. WinGet Upgrade All!
    ``` Powershell
    PS C:\Users\UserID> winget upgrade --all
    Name                                  Id                                     Version            Available        Source
    -----------------------------------------------------------------------------------------------------------------------
    7-Zip 23.00 (x64)                     7zip.7zip                              23.00              24.08            winget
    GIMP 2.10.34                          GIMP.GIMP                              2.10.34            2.10.38          winget
    Git                                   Git.Git                                2.39.1             2.46.0           winget
    Microsoft Visual Studio 2010 Tools f… Microsoft.VSTOR                        10.0.60910         10.0.60917       winget
    Notepad++ (64-bit x64)                Notepad++.Notepad++                    8.6                8.6.9            winget
    Microsoft 365 Apps for enterprise - … Microsoft.Office                       16.0.15601.20626   16.0.17830.20162 winget
    Remote Desktop Connection Manager     Microsoft.Sysinternals.RDCMan          2.9                2.93             winget
    Screenpresso                          Learnpulse.Screenpresso                2.1.26.0           2.1.27.0         winget
    Node.js                               OpenJS.NodeJS.LTS                      20.10.0            20.17.0          winget
    TeamViewer                            TeamViewer.TeamViewer                  15.52.4.0          15.57.3          winget
    PuTTY release 0.78 (64-bit)           PuTTY.PuTTY                            0.78.0.0           0.81.0.0         winget
    Microsoft Power BI Desktop (January … Microsoft.PowerBI                      2.112.1421.0       2.132.1053.0     winget
    Microsoft Build of OpenJDK with Hots… Microsoft.OpenJDK.11                   11.0.16.101        11.0.24.8        winget
    Visual Studio Professional 2022 Prev… Microsoft.VisualStudio.2022.Professio… 17.7.0 Preview 5.0 17.12.0          winget
    Google Chrome                         Google.Chrome.EXE                      128.0.6613.114     128.0.6613.120   winget
    OBS Studio                            OBSProject.OBSStudio                   29.1.3             30.2.3           winget
    Microsoft Visual C++ 2013 Redistribu… Microsoft.VCRedist.2013.x64            12.0.30501.0       12.0.40664.0     winget
    obs-backgroundremoval version 1.1.2   RoyShilkrot.obs-backgroundremoval      1.1.2              1.1.13           winget
    Plantronics Hub Software              Poly.PlantronicsHub                    3.25.53800.37131   3.25.54307.37251 winget
    Microsoft SQL Server Management Stud… Microsoft.SQLServerManagementStudio    19.3               20.2             winget
    Microsoft .NET SDK 8.0.106 (x64)      Microsoft.DotNet.SDK.8                 8.0.106            8.0.401          winget
    Microsoft Teams                       Microsoft.Teams.Classic                1.6.00.11166       1.7.00.21751     winget
    PowerToys (Preview) x64               Microsoft.PowerToys                    0.74.1             0.83.0           winget
    PowerShell 7.4.4.0-x64                Microsoft.PowerShell                   7.4.4.0            7.4.5.0          winget
    Microsoft Visual C++ 2013 Redistribu… Microsoft.VCRedist.2013.x86            12.0.30501.0       12.0.40664.0     winget
    Cisco Webex Meetings                  Cisco.CiscoWebexMeetings               44.6.0             44.9.1.3         winget
    Obsidian                              Obsidian.Obsidian                      1.4.14             1.6.7            winget
    kdenlive                              KDE.Kdenlive                           24.05.1            24.08.0          winget
    Python 3.11.3 (64-bit)                Python.Python.3.11                     3.11.3             3.11.9           winget
    Python 3.12.0 (64-bit)                Python.Python.3.12                     3.12.0             3.12.5           winget
    Windows Terminal                      Microsoft.WindowsTerminal              1.20.11781.0       1.21.2361.0      winget
    31 upgrades available.
    ```

  
