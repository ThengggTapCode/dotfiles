#! /bin/sh

# terminate all polybar processes
killall -q udiskie

# wait for until all the polybar processes have been shut down
while pgrep -u $UID -x udiskie >/dev/null; do sleep 1; done

# launch polybar
udiskie -t &
