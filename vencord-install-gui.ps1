Set-Location "$env:USERPROFILE\Downloads";
If (!(Test-Path ".\VencordInstaller.exe") -or (Test-Path ".\VencordInstaller.exe" -OlderThan (Get-Date).AddDays(-1)))
{
    Invoke-WebRequest "https://github.com/Vencord/Installer/releases/latest/download/VencordInstaller.exe" -OutFile "VencordInstaller.exe";
}
& ".\VencordInstaller.exe";