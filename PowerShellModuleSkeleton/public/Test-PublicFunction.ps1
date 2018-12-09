function Test-PublicFunction {
    [cmdletbinding()]
    param(
        [string]$printSomething = 'something!'
    )

    Begin {}

    Process {
        Write-Output "Writing something to output stream: $printSomething"
        Write-Verbose "Writing something to the verbose stream: $printSomething"
        
    }

    End {}

}