param (
    $apikey
)      

$ErrorActionPreference = 'stop'
Install-PackageProvider -Name Nuget -Scope CurrentUser -Force -Confirm:$false -Verbose
$moduleroot = Split-Path -path $MyInvocation.MyCommand.Path
Publish-Module -Path $moduleroot -NuGetApiKey $apiKey -Force -Verbose
