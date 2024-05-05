#!/bin/bash

filename=$(uuidgen)
ffmpeg -i $1 -bsf:a aac_adtstoasc -vcodec copy -c copy "$filename.mp4"
