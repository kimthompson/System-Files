#!/bin/bash

# update everything
sudo apt update -y
export DEBIAN_FRONTEND=noninteractive
sudo -E apt-get -o Dpkg::Options::="--force-confold" -o Dpkg::Options::="--force-confdef" dist-upgrade -q -y --allow-downgrades --allow-remove-essential --allow-change-held-packages

# install homebrew for some fancier packages that are difficult to keep updated via apt
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(
	echo
	echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"'
) >>/home/bykimthompson/.zprofile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# install zsh and configure with oh my zsh
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc
curl https://raw.githubusercontent.com/kimthompson/system_files/master/.zshrc --output ~/.zshrc
source ~/.zshrc

# install my most beloved tools
NONINTERACTIVE=1 brew install gh fd ripgrep lazygit neovim tmux

# configure tmux
curl https://raw.githubusercontent.com/kimthompson/system_files/master/.tmux.conf --output ~/.tmux.conf

# install and configure neovim with lazyvim
git clone https://github.com/LazyVim/starter ~/.config/nvim/
rm -rf ~/.config/nvim/.git
curl https://raw.githubusercontent.com/kimthompson/system_files/master/custom.lua --output ~/.config/nvim/lua/plugins/custom.lua
vim
