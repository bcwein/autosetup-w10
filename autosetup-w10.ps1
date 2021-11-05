# Install chocolatey
try {
    choco
}
catch {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))    
}

# Path to XML file containing chocolatey packages
# Sample config: https://docs.chocolatey.org/en-us/choco/commands/install?#packages.config

Set-Location "C:\gits\DS\autosetup-w10"
$config = "env.config"

if (Test-Path $config) {
    choco install env.config
    choco upgrade all -y
    # Export upgraded packages to env.config
    .\Export-Chocolatey.ps1 > env.config
} else {
    Write-Output("Config file Missing...exporting existing environment.")
    .\Export-Chocolatey.ps1 > env.config
}

# Try to Install regular windows updates
try {
    Get-WindowsUpdate -Download -Install -AcceptAll
    Get-WindowsUpdate -MicrosoftUpdate -Download -Install -AcceptAll
} # Otherwise, install PSWindowsUpdate and install updates.
catch {
    Install-Module -Name PSWindowsUpdate -Force
    Get-WindowsUpdate -Download -Install -AcceptAll -y
    Get-WindowsUpdate -MicrosoftUpdate -Download -Install -AcceptAll
}