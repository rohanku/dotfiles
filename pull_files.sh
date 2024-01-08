#!/bin/bash
REPO_DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# nvim config
rm -rf $REPO_DIR/.config/nvim
mkdir -p $REPO_DIR/.config
cp -ri ~/.config/nvim $REPO_DIR/.config/nvim

# tmux config
cp ~/.tmux.conf $REPO_DIR/.tmux.conf
