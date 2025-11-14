#!/usr/bin/env bash

git pull origin/main

make_symlink() {
    local target="$1"
    local linkpath="$2"

    if [ -z "$target" ] || [ -z "$linkpath" ]; then
        echo  "Error at make_symlink"
        return 1
    fi

    ln -sfn "$target" "$linkpath"
}

	make_symlink "${pwd}/nvim" "${XDG_CONFIG:-$HOME/.config/nvim}"
 
