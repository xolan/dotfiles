#!/bin/sh
echo "Setting keymap to norwegian..."
./keyboard.sh

echo "Fixing palm detection..."
./touchpad.sh

echo "Autorunning apps for wm..."
./awesome.sh

echo "Done!"
