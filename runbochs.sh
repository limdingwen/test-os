#!/bin/sh

echo
echo "This is only to help you if you are using bochs, and are using the bochs configs bundled with the git."
echo "This will not work with ANYTHING else other than bochs and the bochs directory provided."
echo "Run this in git root, please."
echo
echo "Running on bochs..."
cd bochs && bochs -qf bochs.config
