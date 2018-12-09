$ErrorActionPreference = 'stop'
Install-PackageProvider -Name Nuget -Scope CurrentUser -Force -Confirm:$false
Publish-Module -Path .\ -NuGetApiKey 'oy2mlwbhjrgbiu4fwydq3waghwqitb4elfqpu7fredlohi' -Force -Verbose