# NGINX SPA Ready with GZip enabled

- [Introduction](#introduction)
- [Getting started](#getting-started)
- [Maintenance](#maintenance)
- [References](#references)
- [Credits](#credits)

# Introduction

`Dockerfile` to create a [NGINX](https://www.nginx.com/) container image who is SPA ready and has GZip enabled.

# Getting started

## Image Pull

```bash
docker pull credija/nginx:lts
```

## Quickstart

Start NGINX using:

```bash
docker run --name nginx-credija -d --restart=always \
  --publish 8080:80 \
  -m 256MB \
  credija/nginx:lts
```

Also, if you want to overwrite and provide your own config file use this:
```bash
docker run --name nginx-credija -d --restart=always \
  --publish 8080:80 \
  -m 256MB \
  --volume /opt/your-nginx.conf:/etc/nginx/nginx.conf \
  credija/nginx:lts
```

*Alternatively, you can use the sample [docker-compose.yml](docker-compose.yml) file to start the container using [Docker Compose](https://docs.docker.com/compose/)*

Point your browser to http://localhost:8080 and follow the setup procedure to complete the installation.

# Maintenance

## Upgrading

To upgrade to newer releases:

  1. Download the updated Docker image:

  ```bash
  docker pull credija/nginx:{version}
  ```

  2. Stop the currently running image:

  ```bash
  docker stop nginx-credija
  ```

  3. Remove the stopped container

  ```bash
  docker rm -v nginx-credija
  ```

  4. Start the updated image

  ```bash
  docker run -name nginx-credija -d \
    [OPTIONS] \
    credija/nginx:{version}
  ```

## Shell Access

For debugging and maintenance purposes you may want access the containers shell. If you are using Docker version `1.3.0` or higher you can access a running containers shell by starting `bash` using `docker exec`:

```bash
docker exec -it nginx-credija bash
```

# References

  * https://www.nginx.com/
