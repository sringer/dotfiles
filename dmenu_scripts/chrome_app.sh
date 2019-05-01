#!/bin/sh
# Chrome app launcher

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
touch $HOME/.chrome_app_list
choice=$(cat $HOME/.chrome_app_list | dmenu -p "Launch Chrome App")

if [ -n "$choice" ]; then # If it's not empty
    if curl --output /dev/null --silent --head --fail "$choice"; then
        echo "$choice" >> $HOME/.chrome_app_list
        google-chrome-stable --app="$choice" &
    fi
fi
