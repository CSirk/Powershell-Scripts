$folderPathForCompression = "c:\users\codas\desktop\TestCompress\";
$destinationZipPath = "c:\users\codas\desktop\TestCompress" + "\test.zip";
$filesToZip = (Get-ChildItem -Path $folderPathForCompression -Include *.dll, *.exe);

#$filesPaths = "";

#foreach($test in $filesToZip)
#{
#$filesPaths = $filesPaths + ", " + $test
#}

#$filesPaths = $filesPaths.Remove(0, 2);

#Write-Host $filesPaths;

#Compress-Archive -Path $folderPathForCompression -CompressionLevel Optimal -DestinationPath $destinationZipPath

Get-ChildItem -Path $folderPathForCompression -Include *.dll, *.exe | Compress-Archive -DestinationPath $destinationZipPath -Update