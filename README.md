# Docker

## Action

```console
make once
docker build -t es3 .

docker run -d -v log_store:/var/log:rw -v mysql_store:/var/lib/mysql:rw -p 8081:80 es3
```
In the browser of the docker host: [website](http://127.0.0.1:8081)

Detachable : `docker run -it -v log_store:/var/log:rw -v mysql_store:/var/lib/mysql:rw -p 8081:80 es3` 

To access the into the container : `docker run -it -v log_store:/var/log:rw -v mysql_store:/var/lib/mysql:rw -p 8081:80 es3 bash`

Then `bash /docker-entrypoint`