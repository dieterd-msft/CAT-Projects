$certname = "PowerAutomateActions"
$cert = New-SelfSignedCertificate -CertStoreLocation Cert:\CurrentUser\My -Type CodeSigningCert  -Subject "CN=$certname" -KeyExportPolicy Exportable -KeySpec Signature -KeyLength 2048 -KeyAlgorithm RSA -HashAlgorithm SHA256
$mypwd = ConvertTo-SecureString -String "Pass@w0rd!" -Force -AsPlainText
Export-PfxCertificate -Cert $cert -FilePath "..\customaction\pfx\$certname.pfx" -Password $mypwd