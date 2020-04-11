# Load Public Functions (these should be exported, and availble to the user, in the associated module manifest [don't export everything using wildcards])

$moduleRoot = Split-Path -Path $MyInvocation.MyCommand.Path

"$moduleRoot\public\*.ps1" |
    Resolve-Path |
    ForEach-Object { . $_.ProviderPath }
