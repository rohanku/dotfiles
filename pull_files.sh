#!/bin/bash
REPO_DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# nvim config
rm -rf $REPO_DIR/.config/nvim
rm -rf $REPO_DIR/.config/alacritty
mkdir -p $REPO_DIR/.config
cp -ri ~/.config/nvim $REPO_DIR/.config/nvim
cp -ri ~/.config/alacritty $REPO_DIR/.config/alacritty

# tmux config
cp ~/.tmux.conf $REPO_DIR/.tmux.conf
