#!/bin/bash
REPO_DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

set -eufx -o pipefail

# nvim config
if test -d ~/.config/nvim; then
    mv ~/.config/nvim ~/.config/nvim-bak
fi
if test -d ~/.config/alacritty; then
    mv ~/.config/alacritty ~/.config/alacritty-bak
fi
if test -d ~/.config/zed; then
    mv ~/.config/zed ~/.config/zed-bak
fi
if test -d ~/.config/kitty; then
    mv ~/.config/kitty ~/.config/kitty-bak
fi
if test -f ~/.tmux.conf; then
    mv ~/.tmux.conf ~/.tmux.conf-bak
fi
if test -f ~/.zshrc; then
    mv ~/.zshrc ~/.zshrc-bak
fi

mkdir -p ~/.config
cp -RLi $REPO_DIR/.config/nvim ~/.config/nvim
cp -RLi $REPO_DIR/.config/alacritty ~/.config/alacritty
cp -RLi $REPO_DIR/.config/zed ~/.config/zed
cp -RLi $REPO_DIR/.config/kitty ~/.config/kitty

# tmux config
cp $REPO_DIR/.tmux.conf ~/.tmux.conf
# zsh config
cp $REPO_DIR/.zshrc ~/.zshrc
