#!/bin/sh
xrandr --output HDMI-0 --pos 1920x0 --rate 50 --output DP-1 --pos 3840x0 --rotate left --rate 50 --output eDP-1-1 --pos 0x0 --rate 110

xrandr --output HDMI-0 --primary --mode 1920x1080 --pos 1920x580 --rotate normal --rate 60 --output DP-1 --mode 1920x1080 --pos 3840x0 --rotate left --rate 60 --output eDP-1-1 --mode 1920x1080 --pos 0x580 --rotate normal --rate 120
