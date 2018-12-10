function Publish-ToPSGallery {
    [CmdletBinding()]

    param(
        [Parameter()]
        [string]$apiKey
    )

    Process 
    {
        try {        
            $ErrorActionPreference = 'stop'
            $moduleRoot = Split-Path -Path $MyInvocation.MyCommand.Path
            Install-PackageProvider -Name Nuget -Scope CurrentUser -Force -Confirm:$false -ErrorAction Stop
            Publish-Module -Path $moduleroot -NuGetApiKey $apiKey -Force -Verbose -ErrorAction Stop
        }
        catch {
            throw $_
        }

    }
}

