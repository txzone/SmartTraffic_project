#!/bin/sh

# ffmpeg -i rtsp://admin:ruicheng888@192.168.0.107:554/Streaming/Channels/101?transportmode=unicast -f flv -an rtmp://localhost:1935/stream/hello
ffmpeg -i rtsp://admin:ruicheng888@192.168.0.107:554/Streaming/Channels/101 -vcodec copy -acodec copy -f flv rtmp://localhost:1935/stream/hello
