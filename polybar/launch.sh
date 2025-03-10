#! /bin/sh

# terminate all polybar processes
killall -q polybar

# wait for until all the polybar processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar
polybar &
