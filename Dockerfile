# syntax=docker/dockerfile:1

FROM alpine:3.14

RUN --mount=type=cache,target=/var/cache/apk \
    apk add --update-cache py3-breathe py3-pip && \
    pip3 install sphinx-rtd-theme
