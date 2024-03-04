#!/bin/zsh
# Install packages for ubuntu/debian
if [ -d "/bin/apt" ]; then
  sudo apt update
  sudo apt install tmux
  # ubuntu/debian doesn't ship with latest nvim
  sudo wget -O /usr/bin/nvim https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage 
  sudo chmod 555 /usr/bin/nvim

  if [ -d "/bin/snap" ]; then 
    sudo snap install alacritty --classic
  fi
# Arch
else if [ -d "/bin/pacman" ]; then
  sudo pacman -S tmux zsh neovim
fi

# Neovim
if [ ! -d "$HOME/.config/nvim/.git" ]; then
  git clone https://github.com/NvChad/NvChad $HOME/.config/nvim --depth 1
# else
  # (cd $HOME/.config/nvim; git pull)
fi
ln -sf $PWD/nvim $HOME/.config/nvim/lua/custom

# Alacritty plus theme
if [ -d "$HOME/.config/alacritty/catppuccin/.git" ]; then
  (cd $HOME/.config/alacritty/catppuccin; git pull)
else
  git clone https://github.com/catppuccin/alacritty.git $HOME/.config/alacritty/catppuccin
fi
ln -sf $PWD/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml

ln -sf $PWD/tmux/tmux.conf $HOME/.config/tmux/tmux.conf

ln -sf $PWD/zshrc $HOME/.zshrc
source $HOME/.zshrc 
