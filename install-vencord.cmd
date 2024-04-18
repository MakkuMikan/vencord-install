@echo off

powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ""&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/MakkuMikan/vencord-install/main/vencord-install.ps1'))} global"""