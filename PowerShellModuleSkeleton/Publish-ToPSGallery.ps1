$ErrorActionPreference = 'stop'
$moduleRoot = Split-Path -Path $MyInvocation.MyCommand.Path
Install-PackageProvider -Name Nuget -Scope CurrentUser -Force -Confirm:$false
Publish-Module -Path $moduleroot -NuGetApiKey 'oy2mlwbhjrgbiu4fwydq3waghwqitb4elfqpu7fredlohi' -Force -Verbose