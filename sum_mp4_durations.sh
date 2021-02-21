#!/bin/bash
# Sum all the single length of Mp4 videos and report it in minutes
find -iname "*.mp4" | while read file; do 
  mediainfo "$file"|grep Duration|tail -1|awk '{print $3}'
done| awk 'BEGIN{c=0} {c=c+$1} END{print c}'
