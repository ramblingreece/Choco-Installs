$testchoco = powershell choco -v
if(-not($testchoco)){
    Write-Output "Seems Chocolatey is not installed, installing now"
    Set-ExecutionPolicy Bypass -Scope Process -Force
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))    
}
else{
    Write-Output "Chocolatey Version $testchoco is already installed"
}

choco install git -y
git clone https://github.com/ramblingreece/Choco-Installs.git installs
# TODO: Add enable of windows features as needed. https://chocolatey.org/docs/commands-install#windows-features