#!/bin/sh

set -e

acme.sh --issue --insecure --dns dns_he -d $domain > /dev/null

openssl pkcs12 -export -in /root/.acme.sh/$domain/$domain.cer -inkey /root/.acme.sh/$domain/$domain.key -certfile /root/.acme.sh/$domain/ca.cer -out /tmp/acme.sh/$domain.p12 -passout pass:$key

( echo -----BEGIN PKCS12-----; openssl base64 -in /tmp/acme.sh/$domain.p12; echo -----END PKCS12-----; )
