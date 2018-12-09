| branch | status |
| ------------- |:-------------:| 
| master | [![Build status](https://alekj.visualstudio.com/Jouharyan%20Consulting/_apis/build/status/powershell-module-skeleton-CI)](https://alekj.visualstudio.com/Jouharyan%20Consulting/_build/latest?definitionId=3) | 

# PowerShellModuleSkeleton
Basic skeleton structure for a new PowerShell module with public and private (not exposed to user) function support, tests, and module manifest.

## Getting Started
-Rename all instances of 'PowerShellModuleSkeleton' to < YourProjectName >.
-Add new functions to the PowerShellModuleSkeleton\public\ folder, and update the manifest (*.psd1) file with the new functions to export.

### Testing locally
To import the module locally without having to copy it to on of the defualt $psmoduleroot paths, navigate to within the module's root direction, and import the module from the current directory:
```PowerShell
Import-Module .\
Test-PublicFunction -something 'print something'
Test-PublicFunction -something 'setting the verbose switch will output the same message to the verbose stream, since the [cmdletingbinding()] decorator was used.'
```
Install the module from PowerShell Gallery:
```PowerShell
Install-Module PowerShellModuleSkeleton
Test-PublicFunction
```

### CI/CD via Azure DevOps
Setting up a build in AzureDevops is trivial, and allows for unit testing with pester and static code analysis using PSSCriptAnalyzer -- followed by a release job that deploys the package to the PowerShell Gallery.

todo: describe setting up build and relase.

![build summary](https://github.com/masmontanas/powershell-module-skeleton/blob/master/summary.PNG)

![tests summary](https://github.com/masmontanas/powershell-module-skeleton/blob/master/summary_tests.PNG)

