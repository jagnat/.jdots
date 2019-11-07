#!/bin/bash

IMAGE=~/.cache/i3lock.png
BLUR="0x4"

scrot $IMAGE
convert $IMAGE -resize 10%
convert $IMAGE -blur $BLUR $IMAGE
convert $IMAGE -resize 1000%
i3lock -i $IMAGE
rm $IMAGE

