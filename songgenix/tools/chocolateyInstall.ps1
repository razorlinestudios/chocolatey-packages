$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://razorlinestudios.co.uk/downloads/SongGenix-Setup-1.0.0.exe'
  checksum64     = '695C1213DCD5E75640F9393F0FB0E4ECA1B5D60903D46D169ADF8D5DA84B0F01'
  checksumType64 = 'sha256'
  silentArgs     = '--silent'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
