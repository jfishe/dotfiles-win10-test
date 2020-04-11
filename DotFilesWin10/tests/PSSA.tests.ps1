Describe 'PS Script Analyzer' {
    Context 'Standard Rules' {
     $analysis = Invoke-ScriptAnalyzer -Recurse -Path ..\
     $scriptAnalyzerRules = Get-ScriptAnalyzerRule | Where-Object {$_.sourcename -eq 'PS'}

     forEach ($rule in $scriptAnalyzerRules) {
         It "$rule" {
             If ($analysis.RuleName -contains $rule) {
                 $analysis |
                      Where-Object {$_.RuleName -EQ $rule} -outvariable failures |
                      Out-Default
                 $failures.Count | Should Be 0
             }
         }
     }
 }
}