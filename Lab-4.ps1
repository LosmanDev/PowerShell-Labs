<# 1 Display a list of running processes. #>
Get-Process

# 2 Test the connection to google.com or bing.com without using an external command like ping.
Test-Connection www.google.com

# 3 Display a list of all commands that are of the cmdlet type. (This is tricky—we’ve shown you Get-Command, but you need to read the help to find out how to narrow down the list as we’ve asked.)
Get-Command -CommandType Cmdlet

# 4 Display a list of all aliases.
Get-Alias

<#5 Make a new alias, so you can run ntst to run netstat from a PowerShell
prompt.#>
New-Alias -Name "ntst" netstat

<#6 Display a list of processes that begin with the letter p. Again, read the help for the
necessary command—and don’t forget that the asterisk (*) is a near-universal
wildcard in PowerShell.#>
Get-Process -Name p*

<# 7 Make a new folder (aka directory) using the New-Item cmdlet with the name of
MyFolder1. Then do it again and call it MyFolder2. "Use Help if you’re not familiar with New-Item.#>
New-Item -Name MyFolder1 -Path c:\scripts -Type Directory;
New-Item -Name MyFolder2 -Path c:\scripts -Type Directory

<#8 Remove the folders from step 7 in a single command. Use Get-Command to find
a similar cmdlet to what we used in step 7—and don’t forget that the asterisk
(*) is a near-universal wildcard in PowerShell.#>
Remove-item C:\Scripts\MyFolder*