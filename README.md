# docker-php

[![Docker](https://github.com/Arcanexus/docker-php/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/Arcanexus/docker-php/actions/workflows/docker-publish.yml)

An Apache-based PHP 8.5 image built from the official `php:8.5-apache-trixie` image, with commonly used extensions and Apache URL rewriting enabled.

## Included

- PHP 8.5 with Apache on Debian Trixie
- PHP extensions: `gd`, `mysqli`, `pdo_mysql`, `exif`, `tidy`, and `zip`
- Apache `mod_rewrite`

## Use the published image

Run this from your application directory to serve its contents at `http://localhost:8080`:

```sh
docker run --rm -p 8080:80 -v "$PWD":/var/www/html ghcr.io/arcanexus/docker-php:latest
```

The image is published to GitHub Container Registry. The Docker workflow builds and publishes on pushes to `main` and version tags, and also runs on a schedule.
