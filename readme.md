# Docker-Gitbool
A lightweight gitbook docker image used to build gitbook images.

## Usage
Use this example `dockerfile` to create an nginx image containing the build gitbook. You can then deploy this image behind a reverse nginx proxy.
```
FROM xigen/gitbook-builder as gitbook

COPY . /app

RUN /usr/local/bin/gitbook install && /usr/local/bin/gitbook build

# Use a smaller image for production
FROM nginx:alpine as nginx

COPY --from=gitbook /app/_book /usr/share/nginx/html
```

# Building locally
```sh
docker build --no-cache --pull -t xigen/gitbook-builder .
```

# Public builds
Automatic public builds are available on the docker hub. images are automatically built when updates are pushed to Github.
