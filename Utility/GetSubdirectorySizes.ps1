#Get subdirectory sizes and display them in MB in order of size descending 
$directoryToQuery = "C:\users\codas\Dropbox";

Get-ChildItem $directoryToQuery -Recurse -Directory | ForEach-Object{
    [pscustomobject]@{
        Folder = $_.FullName
        SizeInMB = [math]::Round(((Get-ChildItem -path $_.FullName -recurse | Measure-Object -property length -sum ).sum /1MB), 3);
    }
} | Select-Object Folder, SizeInMB | Sort-Object -Property SizeInMB -Descending