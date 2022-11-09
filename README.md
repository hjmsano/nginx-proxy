# nginx proxy

## Build and Run

#### Create SSL cert
```sh
mkdir keys
openssl genrsa 2048 > keys/server.key
openssl req -new -key keys/server.key > keys/server.csr
openssl x509 -in keys/server.csr -days 1825 -req -signkey keys/server.key > keys/server.crt
```

#### Build
```sh
docker build -t nginx-proxy .
```

#### Run

```sh
docker run -d --name nginx-proxy -p 443:443 nginx-proxy
```
