# Deployment script for CLI based rc2 ASP.NET MVC Application

$ProgressPreference="SilentlyContinue"

.\install.ps1 -Channel beta -InstallDir .dotnet

.\.dotnet\dotnet.exe --version