$projectPath = "";
$nugetExecutablePath = "\" + "nuget.exe";
$nuspecFile = ".nuspec";
$version = "1.0.0";


cd $projectPath;
&$nugetExecutablePath pack $nuspecFile -Version $version;
