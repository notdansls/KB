Clear-Host

# Set the default user here, usefull for when many people have events from the same person.
# N O T E : Please set this back to 'Example User' once done to avoid accidental deletions.
$defaultOrganiser = "Example User"

# Set new OL object.
$microsoftOulook = New-Object -ComObject Outlook.Application


# Create the namespace.
$olNamespace = $microsoftOulook.GetNameSpace("MAPI")
$outlookCalendar = $olNamespace.GetDefaultFolder(9)

# Creates the calendarItems object and allows searching for reoccouring events.
$calendarItems = $outlookCalendar.Items
$calendarItems.IncludeRecurrences = $true


# Obtain from user: Search for organiser (Sender) or for subject.
$senderOrSubject = Read-Host -Prompt "❓`tSearch for [1] sender or [2] subject`n`tEnter 1 or 2 followed by enter"


# User choose Organiser...
if ($senderOrSubject -eq 1) {
    
    
    # Request organisers name.
    $eventOrganizer = Read-Host -Prompt "`n`n❓`tYou have choosen to search by sender.`n`tPlease enter the organisers name`n`tdefault [$($defaultOrganiser)]"
    

    # Only processes if no input provided to conver 'default' behaviour
    if ($eventOrganizer -eq ""){
        $eventOrganizer = $defaultOrganiser
        Write-Host "`n`nℹ️`tProcessing the detault organiser '$($eventOrganizer)'"
    }


    # Just provides feedback.
    else {
        write-host "`n`nℹ️`tProcessing the provided organiser '$($eventOrganizer)'"
    }
 
    # Begins processing of the calendar events
    foreach ($item in $calendarItems){
        
        
        # Looks through the calendar for items 'created' by the requested organiser. If found will ask user to keep or delete.
        if($item.Organizer -eq $eventOrganizer){
            $deleteItem = Read-Host -Prompt "`n`n❓`tFound '$($item.subject)' sent by $($item.Organizer)`n`t⇲ Delete this item (y)es/[n]o"


            # Process deletion of organiser based event.
            if ($deleteItem.ToLower() -eq "y"){
                Write-Host "🗑️`t Deleting item '$($item.subject)' send by $($item.Organizer)" -ForegroundColor Red
            }
            

            # Provide feedback that nothing will happen to organiser based event.
            elseif ($deleteItem.ToLower() -eq "n" -or $deleteItem.ToLower() -eq "") {
                Write-Host "🛟`t The item '$($item.subject)' organised by $($item.Organizer) will NOT be deleted" -ForegroundColor Green
            }
            

            # User didn't entera suitable response to delete or not.
            else {
                Write-Host "⚠️`t'$($deleteItem)' wasn't an option given." -ForegroundColor DarkMagenta
            }
        }
    }
}


# User choose to search by subject.
elseif ($senderOrSubject -eq 2) {


    # Request event subject
    $eventSubject = Read-Host -Prompt "`n`n❓`tYou have choosen to search by subject. Please provide the subject of the calendar item you wish to delete`n`tThis tool will find calendar items containing the word(s) you provide"
    
    # Begins processing of calendar events
    foreach ($item in $calendarItems){


        # Looks through the calendar items with the wildcarded subject `*example*`. If found will ask user to keep or delete.
        if ($item.Subject -like "*$eventSubject*"){
            $deleteItem = Read-Host -Prompt "`n`n❓`tFound '$($item.Subject)' sent by '$($item.Organizer)'`n`t⇲ Delete this item (y)es/[n]o?"
            
            
            # Process deletion of subject based event.
            if ($deleteItem.ToLower() -eq "y") {
                Write-Host "🗑️`t Deleting item '$($item.subject)' send by $($item.Organizer)" -ForegroundColor Red
            }
            
            
            # Provide feedback that nothing will happen to subject based event.
            elseif ($deleteItem.ToLower() -eq "" -or $deleteItem.ToLower() -eq "n"){
                Write-Host "🛟`t The item '$($item.subject)' organised by $($item.Organizer) will NOT be deleted." -ForegroundColor Green
            }
            
            
            # User didn't entera suitable response to delete or not.
            else {
                Write-Host "⚠️`t'$($deleteItem)' wasn't an option given." -ForegroundColor DarkMagenta
            }
        }
    }
}


# User didn't enter a suitable response to search for organiser or subject
else {
    Write-Host "⚠️`t '$($senderOrSubject)' wasn't an option." -ForegroundColor Red
}


Write-Host "✅`tProcess complete"
