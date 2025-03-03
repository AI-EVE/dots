#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please provide a URL for the mpv command."
    exit 1
fi

QUALITY=${2:-480}  # Default to 480 if arg2 is not provided

nohup mpv --ytdl-format="bestvideo[height<=${QUALITY}]+bestaudio/best" "$1" & > /dev/null
