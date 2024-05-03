#!/bin/bash
# ex: ./install.sh DP-0 1920x1080 165

monitor=$1
resolution=$2
hz=$3

dir=/etc/X11/xorg.conf.d
file=20-custom-display.conf
fulldir="$dir/$file"


sudo tee -a $fulldir  <<-EOF

Section "Monitor"
    Identifier "Default Monitor"
    Modeline "$resolution" "$hz" 0 0 0 0 0
EndSection

Section "Screen"
    Identifier "Default Screen"
    Monitor "Default Monitor"
    Device $monitor
    Resolution "$resolution" "$hz"
EndSection

EOF
