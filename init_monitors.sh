#!/bin/bash

my_laptop_external_monitor=$(xrandr --query | grep 'HDMI-1')
secondary_external_monitor=$(xrandr --query | grep 'DP-1')
if [[ $my_laptop_external_monitor = *connected* ]]; then
	xrandr --output HDMI-1 --auto --primary --output eDP-1 --off 
fi

if [[ $secondary_external_monitor = *connected* ]]; then
	xrandr --output DP-1 --auto --noprimary --left-of HDMI-1
	#xrandr --output DP-1 --noprimary --rotate normal --left-of HDMI-1
fi
