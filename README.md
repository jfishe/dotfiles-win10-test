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
