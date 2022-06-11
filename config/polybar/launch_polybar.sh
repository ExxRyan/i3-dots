#!/bin/sh
sleep 1

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --config=$HOME/.config/polybar/polybar.config --reload &
  done
else
  polybar --config=$HOME/.config/polybar/polybar.config --reload &
fi
