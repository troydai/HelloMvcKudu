# Deployment script for CLI based rc2 ASP.NET MVC Application

$ProgressPreference="SilentlyContinue"

.\install.ps1 -Channel beta -InstallDir .dotnet

& .\.dotnet\dotnet.exe --version

# Restore packages
& .\.dotnet\dotnet.exe restore

# Publish
$output = "$env:DEPLOYMENT_TARGET\.."
& .\.dotnet\dotnet.exe publish .\src\HelloMvc\project.json -o $output
