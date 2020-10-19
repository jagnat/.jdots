#!/usr/bin/env sh


killall -q polybar

while pgrep -x polybar > /dev/null; do sleep 1; done

source ~/.cache/wal/colors.sh

export bg_alpha="#cc${background/'#'}"

polybar -l info example &

nm-applet --no-agent &

