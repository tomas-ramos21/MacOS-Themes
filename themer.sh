#!/bin/bash
cd "${0%/*}"

THEMES=("FreeBSD" "Nord" "Blossom")
UBERSICHT="/Users/tomasramos/.config/ubersicht/spaces.coffee"
ALACRITTY="/Users/tomasramos/.config/alacritty/alacritty.yml"
SHELLRC="/Users/tomasramos/.zshrc"
CURRENTPATH=$(pwd)

if [[ "${THEMES[@]}" =~ "$1" ]]; then
        cat $1/zshrc > $SHELLRC
        cat $1/alacritty.yml > $ALACRITTY
        cat $1/spaces.coffee > $UBERSICHT
        osascript $1/system_changes.applescript "$CURRENTPATH/$1/wallpaper"
        source $SHELLRC
else
        echo "Theme: \"$1\" does not exist."
fi

exit
