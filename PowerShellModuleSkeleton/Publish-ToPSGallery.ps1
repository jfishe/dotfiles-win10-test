function Publish-ToPSGallery {
    [CmdletBinding()]

    param(
        [Parameter()]
        [string]$apiKey = $env:apikey,

        [Parameter()]
        [string]$path
    )

    Process 
    {
        try {        
            $ErrorActionPreference = 'stop'
            Install-PackageProvider -Name Nuget -Scope CurrentUser -Force -Confirm:$false -ErrorAction Stop -Verbose
            Publish-Module -Path $moduleroot -NuGetApiKey $apiKey -Force -ErrorAction Stop -Verbose
        }
        catch {
            throw $_
        }

    }
}
$moduleroot = Split-Path -path $MyInvocation.MyCommand.Path
Publish-ToPSGallery -path $moduleroot