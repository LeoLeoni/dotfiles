#!/bin/zsh

# Install packages for ubuntu/debian
if [ -d "/bin/apt" ]; then
  sudo apt update
  yes | sudo apt install tmux fzf stow
  # ubuntu/debian doesn't ship with latest nvim
  sudo wget -O /usr/bin/nvim https://github.com/neovim/neovim/releases/download/v0.10.1/nvim.appimage
  sudo chmod 755 /usr/bin/nvim

  if [ -d "/bin/snap" ]; then 
    yes | sudo snap install alacritty --classic
  fi

  # Needed for zsh
  if [ -d "/bin/zoxide" ]; then
    curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
  fi
fi

# TODO: script for installing kitty

stow zsh
stow alacritty
stow kitty
stow nvim
stow tmux

source $HOME/.zshrc 
