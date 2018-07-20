# See http://joshua.poehls.me/powershell-script-boilerplate/
#Requires -Version 3
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$stopwatch = [System.Diagnostics.Stopwatch]::StartNew()
$scriptDir = Split-Path -LiteralPath $PSCommandPath
$startingLoc = Get-Location
Set-Location $scriptDir
$startingDir = [System.Environment]::CurrentDirectory
[System.Environment]::CurrentDirectory = $scriptDir

try
{
    # TODO: Insert script here.
}
finally
{
    Set-Location $startingLoc
    [System.Environment]::CurrentDirectory = $startingDir
    Write-Output "Done. Elapsed time: $($stopwatch.Elapsed)"
}