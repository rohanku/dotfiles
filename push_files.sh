#!/bin/bash
REPO_DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# nvim config
if test -d ~/.config/nvim; then
    mv ~/.config/nvim ~/.config/nvim-bak
    mv ~/.config/alacritty ~/.config/alacritty-bak
fi
mkdir -p ~/.config
cp -ri $REPO_DIR/.config/nvim ~/.config/nvim
cp -ri $REPO_DIR/.config/alacritty ~/.config/alacritty

# tmux config
cp $REPO_DIR/.tmux.conf ~/.tmux.conf
