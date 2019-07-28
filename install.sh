#!/bin/sh

# refs: https://www.jianshu.com/p/48c408a4c78e

# https://hub.docker.com/r/alfg/nginx-rtmp

# step 1
[ `docker images | grep alfg/nginx-rtmp | wc -l` == 1 ] || docker pull alfg/nginx-rtmp

# step 2
[ `docker ps | grep alfg/nginx-rtmp | wc -l` == 1 ] || docker run -id -p 1935:1935 -p 8080:80 --name nginx-rtmp --rm alfg/nginx-rtmp
