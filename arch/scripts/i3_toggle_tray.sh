#!/usr/bin/env sh
CURRENT=$(i3-msg -t get_bar_config bar-0 | jq .tray_outputs[0])
if [ $CURRENT = "primary" ]; then
    echo "none"
else
    echo "primary"
fi
