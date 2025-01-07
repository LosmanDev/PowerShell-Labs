# 1 Create a new directory called Labs.
New-Item -Path ~/Labs -ItemType Directory

# 2 Create a zero-length file named /Labs/Test.txt (use New-Item). 
New-Item –Path ~/labs -Name test.txt -ItemType file

<# 3 Is it possible to use Set-Item to change the contents of /Labs/Test.txt to
-TESTING? Or do you get an error? If you get an error, why? #>
# The FileSystem provider doesn’t support this action.

# 4 Using the Environment provider, display the value of the system environment variable PATH.
Get-Item env:PATH; Dir env:PATH

# 5 Use help to determine what the differences are between the -Filter, -Include, and -Exclude parameters of Get-ChildItem.
# -Include and -Exclude must be used with –Recurse or if you’re querying a container. Filter uses the PSProvider’s filter capability, which not all providers support. For example, you could use DIR –filter in the filesystem. 

