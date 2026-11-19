$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://razorlinestudios.co.uk/downloads/PixelMark-Setup-1.0.1.exe'
  checksum64     = 'CE15EA10287678F8CBBC935989BEFAD35E8944C4853A3745EF6B4EB04B8EDF6C'
  checksumType64 = 'sha256'
  silentArgs     = '--silent'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
