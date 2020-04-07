#Install PSWindowsUpdate Module
$myModule = 'PSWindowsUpdate'

try {
    If ($null -eq (Get-Module -Name $myModule)){
        Install-Module -Name $myModule
    }
    Import-Module -Name $myModule
}
catch {
    
}
finally {
    Get-Module -Name $myModule
}

#Downloads All Available Updates
Get-WindowsUpdate -Download -AcceptAll

#Installs All Available Updates
Get-WindowsUpdate -Install -AcceptAll