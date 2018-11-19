$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

#Based on Custom
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'sonarqube-scanner*'
  fileType      = 'zip'
  validExitCodes= @(0)
  url           = "https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227.zip"
  checksum      = 'F0E05102A3E98ACEB141577C08896C49E3BFF9520D1E2F75A688A0CE0D099BC0'
  checksumType  = 'sha256'
  destination   = $toolsDir
}

Install-ChocolateyZipPackage @packageArgs
Install-BinFile "sonar-scanner" "$toolsDir\sonar-scanner-3.2.0.1227\bin\sonar-scanner.bat"
