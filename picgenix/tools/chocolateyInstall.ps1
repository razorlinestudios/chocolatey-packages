$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://razorlinestudios.co.uk/downloads/PicGenix-Setup-1.0.1.exe'
  checksum64     = '4280CA1129008FC32BA2FFCAB87C0865069BC1A76811A0EAE96DD8C4CBC6535F'
  checksumType64 = 'sha256'
  silentArgs     = '--silent'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
