$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://razorlinestudios.co.uk/downloads/RigCheckPro-Setup-2.1.1.exe'
  checksum64     = '2EED9B7A5363C751D86139A0AB82D91A36F0F5C49701BDDB5B1396082F7BEDBA'
  checksumType64 = 'sha256'
  silentArgs     = '--silent'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
