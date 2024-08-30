#!/bin/bash
REPO_DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# nvim config
rm -rf $REPO_DIR/.config/nvim
rm -rf $REPO_DIR/.config/alacritty
rm -rf $REPO_DIR/.config/zed
mkdir -p $REPO_DIR/.config
cp -ri ~/.config/nvim $REPO_DIR/.config/nvim
cp -ri ~/.config/alacritty $REPO_DIR/.config/alacritty
cp -ri ~/.config/zed $REPO_DIR/.config/zed

# tmux config
cp ~/.tmux.conf $REPO_DIR/.tmux.conf
