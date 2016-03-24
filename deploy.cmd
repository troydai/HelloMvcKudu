rem Deployment script for a CLI based rc2 ASP.NET MVC web applicaiton

@echo off

echo "In deploy.cmd"

set COREHOST_TRACE=1

powershell -NoProfile -NoLogo -ExecutionPolicy unrestricted -Command "%~dp0deploy.ps1 %*; exit $LastExitCode;"
