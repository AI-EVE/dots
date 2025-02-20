!# /bin/bash

hyprctl hyprpaper preload "$1"
hyprctl hyprpaper wallpaper  " ,$1" 
wal -s -i "$1"
kill -9 `pgrep waybar`
nohup waybar > /dev/null &

