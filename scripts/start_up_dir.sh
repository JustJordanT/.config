#!/bin/zsh
set -e

basistheory_directory="/Users/jordantaylor/repos/basis-theory"
development_directory="/Users/jordantaylor/Desktop/Development"
home_directory="/Users/jordantaylor"
script_file="~/.config/start_up_dir.sh"
dotfiles="~/.config/"
zshconf="~/.zshrc"
cd "$basistheory_directory"

DIR=$(gum choose "basistheory" "development" "home" "edit..." "zshconf" "dotfiles")

if [[ "$DIR" == "basistheory" ]]; then
    gum spin --spinner moon --title "welcome to basis-theory..." -- sleep 1
    cd "$basistheory_directory"
elif [[ "$DIR" == "development" ]]; then
    gum spin --spinner minidot --title "this is development..." -- sleep 1
    cd "$development_directory"
elif [[ "$DIR" == "home" ]]; then
    gum spin --spinner minidot --title "welcome home..." -- sleep 1
    cd "$home_directory"
elif [[ "$DIR" == "edit..." ]]; then
    gum spin --spinner minidot --title "editing... start up script" -- sleep 1
    hx $script_file
elif [[ "$DIR" == "zshconf" ]]; then
    gum spin --spinner minidot --title "editing... zshconf" -- sleep 1
    hx $zshconf
elif [[ "$DIR" == "dotfiles" ]]; then
    gum spin --spinner minidot --title "editing... $dotfiles" -- sleep 1
    cd $dotfiles
fi
