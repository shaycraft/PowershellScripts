function grep($strSearch)
{
    $input | Where-Object { $_.Name -like "*$strSearch*" }
}

function greps($strSearch)
{
    $input | Foreach-Object { 
        $strC = $_ | Out-String -Stream
        #$strC;
        if ($strC -like "*$strSearch*")
        {
            $strC;
        }
    }
}

function du()
{
    $totalLength = Get-ChildItem -Recurse | Measure-Object -Property Length -Sum
    "Length = {0:N6}" -f ($totalLength.Sum/1MB) + " MB"
}

Set-Alias o Invoke-Item
Set-Alias open Invoke-Item
Set-Alias edit sublime_text
Set-Alias ll Get-ChildItem