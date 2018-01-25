# docker-compose

## Requirements

```console
evens@esc-ws:~/docker/estiam/v2$ docker volume create nginx-html1 && \
docker volume create nginx-logs1 && \ 
docker volume create mariadb-logs1 && \ 
docker volume create mariadb-store1 
```
Add to your host `hosts` file

```configuration
127.0.0.1 estiam.com
```

## Build
```console
evens@esc-ws:~/docker/estiam/v2$ docker-compose build
```

## Run
```console
evens@esc-ws:~/docker/estiam/v2$ docker-compose up
```
