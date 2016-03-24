echo "In deploy.cmd"

powershell -NoProfile -NoLogo -ExecutionPolicy unrestricted -Command "%~dp0deploy.ps1 %*; exit $LastExitCode;"

