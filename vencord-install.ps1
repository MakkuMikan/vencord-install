Set-Location "$env:USERPROFILE\Downloads";
If (!(Test-Path ".\VencordInstallerCli.exe") -or (Test-Path ".\VencordInstallerCli.exe" -OlderThan (Get-Date).AddDays(-1)))
{
    Invoke-WebRequest "https://github.com/Vencord/Installer/releases/latest/download/VencordInstallerCli.exe" -OutFile "VencordInstallerCli.exe";
}
& ".\VencordInstallerCli.exe";