$packageName = 'msoidcli'
$installerType = 'msi'
$silentArgs= '/Passive /NoRestart'
$url = 'https://download.microsoft.com/download/7/1/E/71EF1D05-A42C-4A1F-8162-96494B5E615C/msoidcli_32bit.msi'
$url64 = 'https://download.microsoft.com/download/7/1/E/71EF1D05-A42C-4A1F-8162-96494B5E615C/msoidcli_64bit.msi'
$checksumType = 'sha1'
$checksum = 'f7887b16957f128bbe269391f4773ca3366a6430'
$checksum64 = '8cf44473aba94729797be18da4f0b4bab0eebb73'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes @(0) "$checksum" "$checksumType" "$checksum64" "$checksumType"