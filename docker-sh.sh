#!/bin/sh

sudo docker exec -it `docker ps | grep alfg/nginx-rtmp | awk '{print $1}'` /bin/sh
