#!/bin/zsh

# Install packages for ubuntu/debian
if [ -d "/bin/apt" ]; then
  sudo apt update

  yes | sudo apt install tmux fzf stow
  # ubuntu/debian doesn't ship with latest nvim
  sudo wget -O /usr/bin/nvim https://github.com/neovim/neovim/releases/download/v0.11.3/nvim-linux-x86_64.appimage
  sudo chmod 755 /usr/bin/nvim

  # Needed for zsh
  if [ -d "/bin/zoxide" ]; then
    curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
  fi
fi

stow zsh
stow nvim
stow tmux
stow fonts

source $HOME/.zshrc 
