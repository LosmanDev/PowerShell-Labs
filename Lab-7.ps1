# 1 Browse the PowerShell Gallery. Find a module or two that you think sounds interesting and install it.
Install-Module -Name ChocolateyGet

# 2 Browse the available commands for the module you just downloaded.
Get-Module ChocolateyGet -ListAvailable

# 3 Use the commands from section 7.2 to find and install (if needed) the latest version module by Microsoft for working with archives that contain the command Compress-Archive.
Find-Module -Command Compress-Archive | Install-Module -Force -Verbose

# 4 Import the module you just installed.
Import-Module Microsoft.PowerShell.Archive

# 5 Create a Tests folder for the next step with 10 files in it, and name it ~/TestFolder.
New-Item -ItemType Directory -Path ~/TestFolder
for ($i = 1; $i -le 10; $i++) {
    New-Item -ItemType File -Path ~/TestFolder/TestFile$i.txt
}

# 6 Use Compress-Archive to create a zip of the contents of ~/TestFolder, and name the archive TestFolder.zip.
$compress = @{
    Path             = 'C:\Users\User\TestFolder'
    CompressionLevel = 'Fastest'
    DestinationPath  = 'C:\Users\User\TestFolder1.zip'
}
Compress-Archive @compress

# 7 Expand the archive to ~/TestFolder2.
Expand-Archive ~/TestFolder1.zip -DestinationPath ~/TestFolder2

# 8 Use Compare-Object and Select-Object -ExpandProperty Name to compare just the names of the files in the folders to verify you have the same files. 
$reference = Get-ChildItem ~/TestFolder | Select-Object -ExpandProperty name
$difference = Get-ChildItem ~/TestFolder2 | Select-Object -ExpandProperty name
Compare-Object -ReferenceObject $reference -DifferenceObject $difference