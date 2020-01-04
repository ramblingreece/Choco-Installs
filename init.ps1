$testchoco = powershell choco -v

if($LASTEXITCODE -ne 0 -or -not($testchoco)){
    Write-Output "Seems Chocolatey is not installed, installing now"
    Set-ExecutionPolicy Bypass -Scope Process -Force
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))    
    $env:ChocolateyInstall = Convert-Path "$((Get-Command choco).Path)\..\.."   
    Import-Module "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
    refreshenv
}
else{
    Write-Output "Chocolatey Version $testchoco is already installed"
}

choco install git -y
refreshenv
git clone https://github.com/ramblingreece/Choco-Installs.git installs
# TODO: Add enable of windows features as needed. https://chocolatey.org/docs/commands-install#windows-features