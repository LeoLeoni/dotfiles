#!/bin/zsh

# Install packages for ubuntu/debian
if [ -d "/bin/apt" ]; then
  sudo apt update

  # alacritty deps
  yes | sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

  yes | sudo apt install tmux fzf stow
  # ubuntu/debian doesn't ship with latest nvim
  sudo wget -O /usr/bin/nvim https://github.com/neovim/neovim/releases/download/v0.10.2/nvim.appimage
  sudo chmod 755 /usr/bin/nvim

  # Needed for zsh
  if [ -d "/bin/zoxide" ]; then
    curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
  fi
fi

# TODO: script for installing alacritty

stow zsh
stow alacritty
stow nvim
stow tmux
stow fonts

source $HOME/.zshrc 
