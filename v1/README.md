# Docker

A `Dockerfile` for ESTIAM course purpose. Installing `apache2, mariadb and php`

## Action

Requirements :
```console
make once
```

Build :
```console
docker build -t es3 .
```

Run :
```console
docker run -d -v log_store:/var/log:rw -v mysql_store:/var/lib/mysql:rw -p 8081:80 es3
```
In the browser of your  docker host: [website](http://127.0.0.1:8081)

Atachable : `docker run -it -v log_store:/var/log:rw -v mysql_store:/var/lib/mysql:rw -p 8081:80 es3` 

To access the into the container : `docker run -it -v log_store:/var/log:rw -v mysql_store:/var/lib/mysql:rw -p 8081:80 es3 bash`

Then run `bash /docker-entrypoint`