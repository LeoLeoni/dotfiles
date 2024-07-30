#!/bin/zsh
# Install packages for ubuntu/debian
if [ -d "/bin/apt" ]; then
  sudo apt update
  yes | sudo apt install tmux fzf zoxide
  # ubuntu/debian doesn't ship with latest nvim
  sudo wget -O /usr/bin/nvim https://github.com/neovim/neovim/releases/download/v0.9.5/nvim.appimage 
  sudo chmod 555 /usr/bin/nvim

  if [ -d "/bin/snap" ]; then 
    yes | sudo snap install alacritty --classic
  fi
fi

# Neovim
# if [ ! -d "$HOME/.config/nvim/.git" ]; then
#   git clone https://github.com/NvChad/NvChad $HOME/.config/nvim --depth 1
# else
  # (cd $HOME/.config/nvim; git pull)
fi
mkdir -p $HOME/.config/nvim/lua/custom
ln -sf $PWD/nvim $HOME/.config/nvim

# Alacritty plus theme
if [ -d "$HOME/.config/alacritty/catppuccin/.git" ]; then
  (cd $HOME/.config/alacritty/catppuccin; git pull)
else
  git clone https://github.com/catppuccin/alacritty.git $HOME/.config/alacritty/catppuccin
fi
mkdir -p $HOME/.config/alacritty
ln -sf $PWD/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml

mkdir -p $HOME/.config/kitty
ln -sf $PWD/kitty/kitty.conf $HOME/.config/kitty/kitty.conf

mkdir -p $HOME/.config/tmux
ln -sf $PWD/tmux/tmux.conf $HOME/.config/tmux/tmux.conf

ln -sf $PWD/zshrc $HOME/.zshrc
source $HOME/.zshrc 
