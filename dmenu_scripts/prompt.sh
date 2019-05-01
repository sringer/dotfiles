#!/bin/sh
# `./prompt "Do a thing?" "thing to do"
[ $(echo -e "No\nYes" | dmenu -i -p "$1") == "Yes" ] && $2
