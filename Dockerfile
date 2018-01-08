FROM alpine:latest
MAINTAINER Karolis Stasaitis <stkarolis@gmail.com>

RUN adduser q2pro -D

WORKDIR /home/q2pro

RUN \
    apk add --no-cache git make gcc sdl-dev libc-dev libx11-dev libpng-dev libjpeg zlib-dev linux-headers && \
    su q2pro -c "\
    git clone --depth 1 https://github.com/void-995/q2pro.git src && \
    CONFIG_STATIC=true make -C src q2proded gamex86_64.so && \
    mkdir baseq2 && \
    mv src/q2proded . && \
    mv src/gamex86_64.so baseq2/ && \
    rm -rf src/\
    " && \
    apk del git make gcc sdl-dev libc-dev libx11-dev libpng-dev libjpeg zlib-dev linux-headers

USER q2pro

EXPOSE 27910/udp

CMD /home/q2pro/q2proded +exec server.cfg
