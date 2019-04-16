md C:\certs
certutil -syncWithWU C:\certs
$files = Get-ChildItem -Path 'C:\certs\*' -Include '*.crt'
foreach ($file in $files) {
Import-Certificate -FilePath $file -CertStoreLocation cert:\LocalMachine\Root > $null
}
rd C:\certs -Recurse
