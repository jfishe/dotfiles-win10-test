$ErrorActionPreference = 'stop'
Install-PackageProvider -Name Nuget -Scope CurrentUser -Force -Confirm:$false
Install-Module -Name Pester -Scope CurrentUser -Force -Confirm:$false -skippublishercheck
Install-Module -Name PSScriptAnalyzer -Scope CurrentUser -Force -Confirm:$false
Import-Module Pester -Verbose
Import-Module PSScriptAnalyzer -Verbose

Invoke-Pester -OutputFile 'UnitTestResults.xml' -OutputFormat 'NUnitXml' -Script 'PowerShellModuleSkeleton\Tests\PowerShellModuleSkeleton.tests.ps1'