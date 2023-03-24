$ProgramPath = "C:\Program Files\IBM\SPSS Statistics\stats.exe"
$ProgramVersion_target = "28.0.1.1.0" 
$ProgramVersion_current = [System.Diagnostics.FileVersionInfo]::GetVersionInfo($ProgramPath).FileVersion

if($ProgramVersion_current -eq $ProgramVersion_target){
    Write-Host "Found it!"
}