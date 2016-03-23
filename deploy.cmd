echo "In deploy.cmd"

powershell -NoProfile -NoLogo -Command "%~dp0deploy.ps1 %*; exit $LastExitCode;"

