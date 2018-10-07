$directoryToQuery = "C:\users\codas\Dropbox\programming\Git\CSharp";

"{0:N2}" -f ((Get-ChildItem -path $directoryToQuery -recurse | Measure-Object -property length -sum ).sum /1MB) + " MB"