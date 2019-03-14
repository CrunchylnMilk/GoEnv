FROM golang:alpine
MAINTAINER Matthias Antioch

RUN apk update && apk upgrade && apk add --update git && go get github.com/go-zoo/bone && go get github.com/google/uuid && go get golang.org/x/crypto/bcrypt && go get github.com/chbmuc/lirc && go get -u github.com/xfernando/go2seccomp && rm /var/cache/apk/*
CMD "/bin/ash"
