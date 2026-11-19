$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://razorlinestudios.co.uk/downloads/RazorFind-Setup.exe'
  checksum64     = '292D09C9A3B24EF66171B3427E1854702A79C63F33EB63FDCC6D7B9D8683AD13'
  checksumType64 = 'sha256'
  silentArgs     = '--silent'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
