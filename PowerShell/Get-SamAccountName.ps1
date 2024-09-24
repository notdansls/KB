$DomainName = $env:USERDNSDOMAIN

$ClipboardEntry = $((Get-Clipboard).TrimEnd()).Split(" ")

if ($ClipboardEntry[1].Length -eq 0) {
    $NameToLookUp = $(Read-Host -Prompt "Please provide the name to lookup").TrimEnd()
} else {
    $NameToLookUp = "$($ClipboardEntry[0]) $($ClipboardEntry[1])"
}

$Names = $NameToLookUp.Split(" ")
$SamAccountName = $(Get-ADUser -Server $DomainName -Filter "GivenName -eq '$($Names[0])' -and Surname -eq '$($Names[1])'" | Select-Object -ExpandProperty 'SamAccountName').split(" ")

Write-Host "User ID:    $($SamAccountName[0])"

Set-Clipboard $SamAccountName[0]

Remove-Variable DomainName, ClipboardEntry, NameToLookUp, Names, SamAccountName
