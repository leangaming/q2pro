# Lean Gaming - q2pro

[![Build Status](https://travis-ci.org/leangaming/q2pro.svg?branch=master)](https://travis-ci.org/leangaming/q2pro)
[![Docker Hub](https://img.shields.io/docker/pulls/leangaming/q2pro.svg)](https://hub.docker.com/r/leangaming/q2pro)

## q2pro

[q2pro](http://skuller.net/q2pro/) is an open source rewrite of the Quake2 engine aimed to fix and improve various aspects of multiplayer gameplay.

## docker-compose

An easy of getting this up and running is to just use [`docker-compose`](https://docs.docker.com/compose/overview/) with the following contents in your `docker-compose.yml` file:

```
quake2:
  image: leangaming/q2pro
  tty: true
  ports:
    - 27910:27910/udp
  volumes:
    - ./q2pro/baseq2/pak0.pak:/home/q2pro/baseq2/pak0.pak
    - ./q2pro/baseq2/pak1.pak:/home/q2pro/baseq2/pak1.pak
    - ./q2pro/baseq2/pak2.pak:/home/q2pro/baseq2/pak2.pak
    - ./q2pro/baseq2/server.cfg:/home/q2pro/baseq2/server.cfg
```

## Lean Gaming?

LeanGaming aims to provide small (lean) docker images to run prebuilt dedicated servers for various video games. You can find all of our images and source code [here](https://github.com/leangaming).
