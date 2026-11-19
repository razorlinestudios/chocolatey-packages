$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://razorlinestudios.co.uk/downloads/AIColourBack-Setup-1.0.1.exe'
  checksum64     = '3D4F57FB87252284CC75B95C9FAD08DAF8A28D369CA05A2A22D24EDEF3B38C64'
  checksumType64 = 'sha256'
  silentArgs     = '--silent'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
