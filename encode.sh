#!/usr/bin/env sh
#
# Syntax: encode.sh FILE

if [ "$#" != 1 ]; then
  echo "Syntax: encode.sh FILE" >&2
  exit 1
fi

ffmpeg -y -i "$1" -c:v libx264 -t 30 -vcodec libx264 -acodec libfaac video.mp4
