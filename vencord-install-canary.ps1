Push-Location "$env:USERPROFILE\Downloads";
If (!(Test-Path ".\VencordInstallerCli.exe"))
{
    Invoke-WebRequest "https://github.com/Vencord/Installer/releases/latest/download/VencordInstallerCli.exe" -OutFile "VencordInstallerCli.exe";
}
Else
{
    & ".\VencordInstallerCli.exe" "--update-self";
}
& ".\VencordInstallerCli.exe" "--branch" "canary" "--install-openasar";
& ".\VencordInstallerCli.exe" "--branch" "canary" "--install";
Pop-Location