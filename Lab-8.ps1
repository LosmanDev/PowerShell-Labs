# 1 Identify a cmdlet that produces a random number.
Get-Random

# 2 Identify a cmdlet that displays the current date and time.
Get-Date

<# 3 What type of object does the cmdlet from task 2 produce? (What is the
TypeName of the object produced by the cmdlet?)#>
Get-Date | gm # TypeName: System.DateTime

<#4 Using the cmdlet from task 2 and Select-Object, display only the current day
of the week in a table like the following (caution: the output will right-align, so
make sure your PowerShell window doesn’t have a horizontal scrollbar)

DayOfWeek
---------
 Monday
#>
Get-Date | Select-Object DayOfWeek

# 5 Identify a cmdlet that will show you all the times in a directory.
Get-ChildItem

<# 6 Using the cmdlet from task 5, display all the times in the directory of your choice.
Then extend the expression to sort the list by the time the items were created
and display only the filename(s) and the date created. Remember that the column headers shown in a command’s default output aren’t necessarily the real
property names—you need to look up the real property names to be sure.#>
Get-ChildItem | Sort-Object LastWriteTime | Select-Object Name, CreationTime

<#7 Repeat task 6, but this time sort the items by the last write time; then display the
filename, creation time, and the last write time. Save this in a CSV file and an
HTML file.#>
Get-ChildItem | Sort-Object LastWriteTime -Descending | Select-Object Name, LastWritetime, CreationTime  | Export-Csv file.csv
Get-ChildItem | Sort-Object LastWriteTime -Descending | Select-Object Name, LastWritetime, CreationTime  | Out-File file.html