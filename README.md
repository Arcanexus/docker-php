# docker-php

[![Docker](https://github.com/Arcanexus/docker-php/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/Arcanexus/docker-php/actions/workflows/docker-publish.yml)

## Purpose

This image is made from php:8.3-apache and do the following :
- enable apache mod_rewrite
- add PHP extensions : php-gd and php-zip

## Usage 

```bash
$ docker run -d -p 80:80 --name my-apache-php-app -v "$PWD":/var/www/html ghcr.io/arcanexus/docker-php:latest
```
