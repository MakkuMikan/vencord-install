# Installation
## Batch Script
Place the `install-vencord.cmd` file into your CLI's startup directory (usually $HOME)
## Powershell Alias
Put the following into your powershell profile (run `notepad $profile` to edit your current profile):
```ps
function InstallVencord {
    Set-ExecutionPolicy Bypass -Scope Process -Force;
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
    iex "&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/MakkuMikan/vencord-install/main/vencord-install.ps1'))} global"


New-Alias install-vencord InstallVencord
}
```
You can now call `Install-Vencord` to run the latest vencord installer.
# Run Manually
```ps
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex "&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/MakkuMikan/vencord-install/main/vencord-install.ps1'))} global"
```