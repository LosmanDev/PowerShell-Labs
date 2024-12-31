# "Hello World" | Out-File test1.txt; "Hello Planet" | Out-File test2.txt; Compare-Object -ReferenceObject (Get-Content .\test1.txt) -DifferenceObject (Get-Content .\test2.txt)

# Out-File won’t do anything because the file is created by Export-CSV

# Yes, using the Id / InstanceId or Lab answer: Stop-job jobName

# You need to specify the -Delimiter parameter with the pipe character (|)

# Use the –IncludeTypeInformation parameter with Export-CSV.

# Get-Command | Export-CSV services.CSV -Confirm

# Get-Command | Export-CSV services.CSV –NoClobber

# Get-Command | Export-CSV services.CSV -UseCulture