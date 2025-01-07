<# 1 Run Update-Help, and ensure that it completes without errors so that you have
a copy of the help on your local computer. You need an internet connection #>
Update-Help

<# 2 Can you find any cmdlets capable of converting other cmdlets’ output into
HTML? #>
Get-Process -id 2112 | ConvertTo-Html | Out-File test.html

<# 3 Are there any cmdlets that can redirect output into a file? #>
Out-File test.txt

<# 4 How many cmdlets are available for working with processes? (Hint: Remember
that cmdlets all use a singular noun.) #>
Get-Process

<# 5 What cmdlet might you use to set to a PowerShell breakpoint? (Hint: PowerShellspecific nouns are often prefixed with PS.) #>
Get-Command -Verb set -Noun psbreakpoint

<# 6 You’ve learned that aliases are nicknames for cmdlets. What cmdlets are available to create, modify, export, or import aliases? #>
help alias

<# 7 Is there a way to keep a transcript of everything you type in the shell, and save
that transcript to a text file? #>
help-transcript

<# 8 Getting all processes can be overwhelming. How can you get processes by the
name of the process? #>
help Get-Process –Parameter Name

<# 9 Is there a way to tell Get-Process to tell you the user who started the process? #>
help Get-Process –Parameter IncludeUserName

<# 10 Is there a way to run a command on a remote host? (Hint: Invoke is the verb for running something now.) #>
help Invoke-Command –Parameter hostname; help Invoke-Command –Parameter computername

<# 11 Examine the help file for the Out-File cmdlet. The files created by this cmdlet
default to a width of how many characters? Is there a parameter that would
enable you to change that width? #>
Help Out-File –Full; Help Out-File –Parameter Width

<# 12 By default, Out-File overwrites any existing file that has the same filename as
what you specify. Is there a parameter that would prevent the cmdlet from overwriting an existing file? #>
<# If you run #> Help Out-File –Full <# and look at parameters, you should see -NoClobber #>

<# 13 How could you see a list of all aliases defined in PowerShell? #>
Get-Alias

<# 14 Using both an alias and abbreviated parameter names, what is the shortest command line you could type to retrieve a list of commands with the word process in
the name? #>
Gcm -na *process*

<# 15 How many cmdlets are available that can deal with generic objects? (Hint:
Remember to use a singular noun like object rather than a plural one like objects.)  #>
Get-Command –Noun object

<# 16 This chapter briefly mentioned arrays. What help topic could tell you more
about them? #>
help about_arrays; help *array*