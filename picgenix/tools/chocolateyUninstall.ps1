$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'PicGenix'
  fileType       = 'exe'
  silentArgs     = '--uninstall --silent'
  validExitCodes = @(0, 3010, 1605, 1614, 1641)
}

[array]$key = Get-UninstallRegistryKey -SoftwareName $packageArgs['softwareName']

if ($key.Count -eq 1) {
  $key | ForEach-Object {
    $uninstStr = "$($_.UninstallString)"
    if ($uninstStr -match '^"([^"]+)"') {
      $packageArgs['file'] = $Matches[1]
    } else {
      $packageArgs['file'] = ($uninstStr -split ' --')[0].Trim()
    }
    if ($packageArgs['file']) {
      Uninstall-ChocolateyPackage @packageArgs
    }
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "$($packageArgs['packageName']) has already been uninstalled by other means."
} elseif ($key.Count -gt 1) {
  Write-Warning "$($key.Count) matches found for $($packageArgs['softwareName'])!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
}
