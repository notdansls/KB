$alpha = @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
$stringCount = 0
$stringBuilder = ""

function getNumber
{
    # Generate a random number between 0 and 9 (10 options)
    $digit = (Get-Random -Minimum 0 -Maximum 9).ToString()
    
    # Return the number to the requester
    return $digit
}


function getAlpha($case)
{
    # Set the random position in the alphabet.
    $position = Get-Random -Minimum 0 -Maximum 26

    if ($case -eq "upper")
    {
        $alphaResult = $alpha[$position].ToString().ToUpper()
        return $alphaResult
    }
    elseif ($case -eq "lower")
    {
        $alphaResult = $alpha[$position].ToString().ToLower()
        return $alphaResult
    }
    else
    {
        Write-Host "Error: 0x00878374 (Script errored sucessfully)"
    }
        
    return "Error"
}


function generateCharacter
{
    $characterType = Get-Random -Minimum 0 -Maximum 3

    if ($characterType -eq 0)
    {
        $result = getNumber
        return $result

    }
    elseif ($characterType -eq 1)
    {
        $result = getAlpha("upper")
        return $result
    }
    elseif ($characterType -eq 2)
    {
        $result = getAlpha("lower")
        return $result
    }


}


function generateString()
{
    while ($stringCount -lt 8)
    {
        $tempString = generateCharacter
        $stringBuilder = $stringBuilder+$tempString

        $stringCount = $stringCount + 1
    }

    Set-Clipboard -Value $stringBuilder
}

generateString


# clear all variables
$alpha = $stringCount = $stringBuilder = $digit = $case = $position = $alphaResult = $characterType = $result = $tempString = $null
