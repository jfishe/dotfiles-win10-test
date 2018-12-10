function Publish-ToPSGallery {
    [CmdletBinding()]

    param(
        [Parameter()]
        [string]$apiKey,

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

# set location to script's location (module root). Apikey variable is set by task, 
# since secret variables can't be referenced driectly from the powershell task.
$moduleroot = Split-Path -path $MyInvocation.MyCommand.Path
Publish-ToPSGallery -path $moduleroot