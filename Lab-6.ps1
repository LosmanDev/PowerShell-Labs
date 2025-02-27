<# 1 Create two similar, but different, text files. Try comparing them by using CompareObject. Run something like this: Compare-Object -Reference (Get-Content
File1.txt) -Difference (Get-Content File2.txt). If the files have only one
line of text that’s different, the command should work.#>
"Hello World" | Out-File test1.txt; "Hello Planet" | Out-File test2.txt; Compare-Object -ReferenceObject (Get-Content .\test1.txt) -DifferenceObject (Get-Content .\test2.txt)

<# 2 What happens if you run Get-Command | Export-CSV commands.CSV | Out-File
from the console? Why does that happen?#>
Out-File <#won’t do anything because the file is created by Export-CSV#>

<# 3 Apart from getting one or more jobs and piping them to Stop-Job, what other
means does Stop-Job provide for you to specify the job or jobs you want to
stop? Is it possible to stop a job without using Get-Job at all? #>
<# Yes, using the Id / InstanceId or Lab answer:#> Stop-job jobName

<# 4 What if you want to create a pipe-delimited file instead of a CSV file? You’d still
use the Export-CSV command, but what parameters would you specify?#>
get-Command | Export-CSV commands.CSV -Delimiter "|"

<# 5 How do you include the type information in the # comment line at the top of
an exported CSV file? #>
–IncludeTypeInformation <# parameter with #> Export-CSV.

<# 6 Export-Clixml and Export-CSV both modify the system because they can create and overwrite files. What parameter would prevent them from overwriting
an existing file? What parameter would ask whether you were sure before proceeding to write the output file? #>
Get-Command | Export-CSV services.CSV -Confirm
Get-Command | Export-CSV services.CSV –NoClobber

<# 7 The operating system maintains several regional settings, which include a
default list separator. On US systems, that separator is a comma. How can you
tell Export-CSV to use the system’s default separator rather than a comma? #>

Get-Command | Export-CSV services.CSV -UseCulture