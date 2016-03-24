# Deployment script for CLI based rc2 ASP.NET MVC Application

$ProgressPreference="SilentlyContinue"

# .\install.ps1 -Channel beta -InstallDir .dotnet

# .\.dotnet\dotnet.exe --version

$sdk_folder = (ls -Directory .dotnet\sdk\ | select -first 1).FullName

# Validate version
& "$sdk_folder\corehost.exe" $sdk_folder\dotnet.dll --version 

# Restore packages
& "$sdk_folder\corehost.exe" $sdk_folder\dotnet.dll restore

# Publish
$output = "$env:DEPLOYMENT_TARGET\.."
& "$sdk_folder\corehost.exe" $sdk_folder\dotnet.dll publish .\src\HelloMvc\project.json -o $output