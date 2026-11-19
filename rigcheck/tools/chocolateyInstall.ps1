$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://razorlinestudios.co.uk/downloads/RigCheck-Setup-1.0.8.exe'
  checksum64     = '9EF7400EDD1B4A15BB2768CEBEF8EFAC0F2FBD473133F691E40463744E293D55'
  checksumType64 = 'sha256'
  silentArgs     = '--silent'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
