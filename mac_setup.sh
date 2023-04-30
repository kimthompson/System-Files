#!/bin/bash

# install homebrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# update everything
brew update
brew upgrade
brew cleanup -s
brew cask cleanup

# install my most beloved tools
NONINTERACTIVE=1 brew install gh fd ripgrep zsh tmux lazygit neovim

# configure zsh, tmux, and neovim
curl https://raw.githubusercontent.com/kimthompson/system_files/master/.tmux.conf --output ~/.tmux.conf
curl https://raw.githubusercontent.com/kimthompson/system_files/master/.zshrc --output ~/.zshrc
git clone https://github.com/LazyVim/starter ~/.config/nvim/
rm -rf ~/.config/nvim/.git
curl https://raw.githubusercontent.com/kimthompson/system_files/master/custom.lua --output ~/.config/nvim/lua/plugins/custom.lua
rm -rf ~/.config/nvim/lua/plugins/example.lua
rm -rf ~/.config/nvim/lua/plugins/keymaps.lua
curl https://raw.githubusercontent.com/kimthompson/system_files/master/keymaps.lua --output ~/.config/nvim/lua/config/keymaps.lua

# and now, finally, boot into zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
