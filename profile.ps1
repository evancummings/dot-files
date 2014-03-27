$env:Path = $env:Path + ";c:\Users\Evan\bin\";

$dev = "c:\code"
cd $dev

New-Alias which get-command

function prompt {
$userLocation = $env:username + '@' + [System.Environment]::MachineName + ' ' + $path
$host.UI.RawUi.WindowTitle = $userLocation
$matchy = ''
git branch | foreach {
if ($_ -match "^\*(.*)"){
$matchy += $matches[1].trim()
}
}

if($matchy -ne '') {
$prompt = ' ['
$prompt += $matchy
$prompt += '] ' + $pwd + '>'
Write-Host($prompt) -nonewline -foregroundcolor Yellow
}
else
{
Write-Host($pwd) -nonewline -foregroundcolor Green
Write-Host('>') -nonewline -foregroundcolor Green
}
return " "
}

function vso {
    $var = Resolve-Path *.sln
    start $var
    
}

New-Alias vsopen vso
Set-Alias subl 'C:\Program Files\Sublime Text 2\sublime_text.exe'