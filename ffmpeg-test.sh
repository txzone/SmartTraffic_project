# 录屏加摄像头和麦克风这个延时很高
ffmpeg -thread_queue_size 128 -f x11grab -video_size 1920x1080 -framerate 30 -i :0.0 -f video4linux2 -video_size 400x300 -framerate 30 -i /dev/video0 -f alsa -ac 2 -i pulse -filter_complex ‘[0:v][1:v]overlay=x=main_w-overlay_w-10:y=main_h-overlay_h-10[out]’ -map ‘[out]’ -map 2:a -vcodec libx264 -vprofile baseline -acodec aac -strict -2 -maxrate 3000k -b:a 128k -f flv rtmp://192.168.0.116:2017/live/test

只有音频几乎没有延时的推送
ffmpeg -thread_queue_size 6 -f alsa -ac 2 -i pulse -vcodec libx264 -preset ultrafast -acodec aac -strict -2 -b:v 60 -f flv rtmp://192.168.1.101:2017/live/test
原文：https://blog.csdn.net/csdn__dongdong/article/details/82415494


另外也可用ffplayer
ffplay -fflags nobuffer -nodisp rtmp://192.168.1.108:2017/live/test
