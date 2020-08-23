#/bin/bash

xrandr | grep 1360x768 > /dev/null
if [ $? -ne 0 ]; then
xrandr --newmode "1360x768"   84.75  1360 1432 1568 1776  768 771 781 798 -hsync +vsync

xrandr --addmode HDMI-3 1360x768
fi


xrandr --output HDMI-3 --mode 1360x768

