# Create a self-signed certificate
# $cert = New-SelfSignedCertificate -CertStoreLocation cert:\LocalMachine\My -DnsName yourdomain.com
# yourdomain as XXXXX
$cert = New-SelfSignedCertificate -CertStoreLocation cert:\LocalMachine\My -DnsName XXXXXX.onmicrosoft.com

# Create a password for the PFX file
# $pwd = ConvertTo-SecureString -String 'yourpassword' -Force -AsPlainText
# yourpassword as YYYYYY
$certPwd = ConvertTo-SecureString -String 'YYYYYYY' -Force -AsPlainText

# Set the path to the certificate
$path = 'cert:\LocalMachine\My\' + $cert.thumbprint

# Export the certificate in PFX format
# Export-PfxCertificate -Cert $path -FilePath C:\yourcertificate.pfx -Password $pwd
# "C:\scripts\AI\email\cert.pfx"
Export-PfxCertificate -Cert $path -FilePath C:\scripts\AI\email\cert.pfx -Password $certPwd

