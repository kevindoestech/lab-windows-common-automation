#Install PSWindowsUpdate Module
$myModule = 'PSWindowsUpdate'

try {
    Import-Module -Name $myModule
}
catch {
    Install-Module -Name $myModule
    Import-Module -Name $myModule
}
finally {
    Get-Module -Name $myModule
}

#Downloads All Available Updates
Get-WindowsUpdate -Download -AcceptAll

#Installs All Available Updates
Get-WindowsUpdate -Install -AcceptAll