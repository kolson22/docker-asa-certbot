# Built for HE DNS service only #

## Use the following variables during the container build ##

- HE_Username=username 
- HE_Password=password 
- domain=test.com 
- key=password

```
docker build -t kolson22/asa-certbot https://github.com/kolson22/docker-asa-certbot.git
docker run --rm -e HE_Username=<username> -e HE_Password=<password> -e domain=<domain in he> -e key=<key to decrypt pkcs12> kolson22/asa-certbot
```
