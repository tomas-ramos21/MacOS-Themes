#!/bin/bash
cd "${0%/*}"

THEMES=("FreeBSD" "Nord" "Blossom", "Dracula", "Monokai", "Doom", "Light", "Ubuntu")
UBERSICHT="/Users/tomasramos/.config/ubersicht/spaces.coffee"
ALACRITTY="/Users/tomasramos/.config/alacritty/alacritty.yml"
YABAI="/Users/tomasramos/.config/yabai/yabairc"
SHELLRC="/Users/tomasramos/.zshrc"
CURRENTPATH=$(pwd)

if [[ "${THEMES[@]}" =~ "$1" ]]; then
        cat $1/zshrc > $SHELLRC
        cat $1/alacritty.yml > $ALACRITTY
        cat $1/spaces.coffee > $UBERSICHT
        cat $1/yabairc > $YABAI
        osascript $1/system_changes.applescript "$CURRENTPATH/$1/wallpaper"
        source $SHELLRC
        bash $YABAI
else
        echo "Theme: \"$1\" does not exist."
fi

exit
