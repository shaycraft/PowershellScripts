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