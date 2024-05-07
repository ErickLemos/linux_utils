#!/bin/bash

filename=$(uuidgen)
ffmpeg -i $1 -bsf:a aac_adtstoasc -vcodec copy -c copy "$filename.mp4"
mv "$filename.mp4" $HOME/Downloads/$filename.mp4
