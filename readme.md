# Installation
## Batch Script
Place the `install-vencord.cmd` file into your CLI's startup directory (usually $HOME)
Following that, you can now run `> install-vencord` in CMD
## Powershell Alias
Put the following into your powershell profile (run `notepad $profile` to edit your current profile):
```ps
function InstallVencord {
    Set-ExecutionPolicy Bypass -Scope Process -Force;
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
    iex "&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/MakkuMikan/vencord-install/main/vencord-install.ps1'))} global"
}

New-Alias install-vencord InstallVencord
```
You can now call `Install-Vencord` to run the latest vencord installer.
# Run Manually
```ps
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex "&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/MakkuMikan/vencord-install/main/vencord-install.ps1'))} global"
```

## GUI installer
Use the above steps, but with `install-vencord-gui.cmd` and `vencord-install-gui.ps1`, for example:
```ps
function InstallVencordGui {
    Set-ExecutionPolicy Bypass -Scope Process -Force;
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
    iex "&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/MakkuMikan/vencord-install/main/vencord-install-gui.ps1'))} global"
}

New-Alias install-vencord InstallVencordGui
```
and for running manually:
```ps
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex "&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/MakkuMikan/vencord-install/main/vencord-install-gui.ps1'))} global"
```