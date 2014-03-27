//Get Path
$env:Path = $env:Path + ";c:\Users\Evan\bin\";

//Set Default Working Directory
$dev = "c:\code"
cd $dev

//Add Linux Alias
New-Alias which get-command

//Fancy git Display
function prompt {
	
	$userLocation = $env:username + '@' + [System.Environment]::MachineName + ' ' + $path
	$host.UI.RawUi.WindowTitle = $userLocation
	$matchy = ''
	
	git branch | foreach {
		if ($_ -match "^\*(.*)") {
			$matchy += $matches[1].trim()
		}
	}

	if($matchy -ne '') {
		$prompt = ' ['
		$prompt += $matchy
		$prompt += '] ' + $pwd + '>'
		Write-Host($prompt) -nonewline -foregroundcolor Yellow
	} else {
		Write-Host($pwd) -nonewline -foregroundcolor Green
		Write-Host('>') -nonewline -foregroundcolor Green
	}

	return " "
}

//Open Visual Studio with closest Solution
function vso {
	$var = Resolve-Path *.sln
	start $var
}
New-Alias vsopen vso

//Add subl <file / dir> command (i.e. >> subl ., >> subl Readme.txt)
Set-Alias subl 'C:\Program Files\Sublime Text 2\sublime_text.exe'