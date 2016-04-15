#!/usr/bin/env bash

SONG=$(mpc current -f '[[%artist% - ]%title%]')
OUTPUT=""
ICON=""

if [ -n "$(mpc status | grep -E '\[playing\]')" ]; then
    ICON="f144"
elif [ -n "$(mpc status | grep -E '\[paused\]')" ]; then
    ICON="f28b"
else
    ICON="f28d"
fi

if [ -n "$SONG" ]; then
    OUTPUT="$SONG"
else
    OUTPUT="-None-"
fi

echo -e "  \u${ICON}  ${OUTPUT} "

exit 0