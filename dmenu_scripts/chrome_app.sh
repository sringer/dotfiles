#!/bin/sh
# Chrome app launcher

touch $HOME/.chrome_app_list
choice=$(cat $HOME/.chrome_app_list | dmenu -p "Launch Chrome App")
echo "Choice: $choice"

if [ -n "$choice" ]; then # If it's not empty
    echo "at least it's not empty"
    if curl --output /dev/null --silent --head --fail "$choice" || [[ $choice == *"netflix"* ]]; then
        grep -qxF "$choice" $HOME/.chrome_app_list || echo "$choice" >> $HOME/.chrome_app_list
        echo "we out here tho, with '$choice'"
        google-chrome-stable --app="$choice" &
    fi
fi
