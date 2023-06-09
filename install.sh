#!/bin/zsh
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
ln -sf $PWD/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml

ln -sf $PWD/zshrc $HOME/.zshrc
source $HOME/.zshrc
