Built for HE DNS service only

Use the following variables during the container build

HE_Username=username to HE DNS
HE_Password=password to HE DNS
domain=test.com 
key=password for pkcs encrypt

docker build -t kolson22/asa-certbot https://github.com/kolson22/docker-asa-certbot
docker run --rm -e HE_Username=<username> -e HE_Password=<password> -e domain=<domain in he> -e key=<key to decrypt pkcs12> kolson22/asa-certbot
