#!/usr/bin/env sh

wal -R -n
wal_mode=$(cat ~/.cache/wal/mode)
wal_path=$(cat ~/.cache/wal/wal)
echo $wal_mode
if [ "$wal_mode" = "tile" ]; then
    feh --bg-tile $wal_path
    echo here1
else
    feh --bg-fill $wal_path
    echo here2
fi
