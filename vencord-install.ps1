Set-Location "$env:USERPROFILE\Downloads";
Invoke-WebRequest "https://github.com/Vencord/Installer/releases/latest/download/VencordInstallerCli.exe" -OutFile "VencordInstallerCli.exe";
& ".\VencordInstallerCli.exe";
