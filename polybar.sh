######/usr/bin/env sh
#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
#polybar example --config=$HOME/dots/polybar/config &
#
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload example --config=$HOME/dots/polybar/config &
  done
else
  polybar --reload example --config=$HOME/dots/polybar/config &
fi
