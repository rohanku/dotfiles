#!/bin/bash
REPO_DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# nvim config
rm -rf $REPO_DIR/.config/nvim
rm -rf $REPO_DIR/.config/alacritty
rm -rf $REPO_DIR/.config/zed
rm -rf $REPO_DIR/.config/kitty
mkdir -p $REPO_DIR/.config
cp -RLi ~/.config/nvim $REPO_DIR/.config/nvim
cp -RLi ~/.config/alacritty $REPO_DIR/.config/alacritty
cp -RLi ~/.config/zed $REPO_DIR/.config/zed
cp -RLi ~/.config/kitty $REPO_DIR/.config/kitty

# tmux config
cp ~/.tmux.conf $REPO_DIR/.tmux.conf
