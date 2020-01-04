Write-Host "Setting up machine settings"
# Ask for a password if using Windows Dev Evaluation VM
if ((Get-LocalUser -Name "user" -ErrorAction Ignore).Enabled){
    Write-Host "Enter password and then Enter, there is no confirmation:"
    $Password = Read-Host -AsSecureString
    $UserAccount = Get-LocalUser -Name "user"
    $UserAccount | Set-LocalUser -Password $Password    
}
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" –Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"