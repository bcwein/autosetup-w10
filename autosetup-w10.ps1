# Install chocolatey
try {
    choco
}
catch {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))    
}


# Path to XML file containing chocolatey packages
# Sample config: https://docs.chocolatey.org/en-us/choco/commands/install?#packages.config
$config = ".\env.config"

if (Test-Path $config) {
    choco install env.config
    choco upgrade all -y
    # Export upgraded packages to env.config
    .\Export-Chocolatey.ps1 > env.config
} else {
    Write-Output("Config file Missing")
}

# Try to install windows updates
try {
    Get-WUInstall -MicrosoftUpdate -Download -Install -AcceptAll
} # Otherwise, install PSWindowsUpdate and install updates.
catch {
    Install-Module -Name PSWindowsUpdate 
    Get-WUInstall -MicrosoftUpdate -Download -Install -AcceptAll
}
