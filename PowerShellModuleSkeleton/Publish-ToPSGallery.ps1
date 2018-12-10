function Publish-ToPSGallery {
    [CmdletBinding()]

    param(
        [Parameter()]
        [string]$apiKey = $env:apikey
    )

    Process 
    {
        try {        
            $ErrorActionPreference = 'stop'
            $moduleRoot = Split-Path -Path $MyInvocation.MyCommand.Path
            Install-PackageProvider -Name Nuget -Scope CurrentUser -Force -Confirm:$false -ErrorAction Stop -Verbose
            Publish-Module -Path $moduleroot -NuGetApiKey $apiKey -Force -ErrorAction Stop -Verbose
        }
        catch {
            throw $_
        }

    }
}

Publish-ToPSGallery