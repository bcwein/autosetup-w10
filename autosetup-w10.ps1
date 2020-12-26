# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

$config = ".\env.config"

if (Test-Path $config) {
    choco install env.config
    choco upgrade all
    # Export upgraded packages to env.config
    .\Export-Chocolatey.ps1 > env.config
} else {
    Write-Output("Config file Missing")
}