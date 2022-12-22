#!/bin/bash

for d in */ ; do
    if [ -d "$d" ]; then
        echo installing dotfiles: "${d%/}"
        stow "${d%/}"
    fi
done
