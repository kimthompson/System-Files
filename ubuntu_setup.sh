#!/bin/bash

# update everything
sudo apt update -y
export DEBIAN_FRONTEND=noninteractive
sudo -E apt-get -o Dpkg::Options::="--force-confold" -o Dpkg::Options::="--force-confdef" dist-upgrade -q -y --allow-downgrades --allow-remove-essential --allow-change-held-packages

# install homebrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/bykimthompson/.zprofile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# install zsh and configure with oh my zsh
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/robbyrussell/gozilla/' ~/.zshrc
echo 'alias nr="npm run"\n' >> ~/.zshrc
echo 'alias git-nope="git reset --hard"\n' >> ~/.zshrc
echo 'alias git-set="git push --set-upstream origin "\n' >> ~/.zshrc
echo 'alias tmuxn="tmux new -s "\n' >> ~/.zshrc
echo 'alias tmuxa="tmux attach -t "\n' >> ~/.zshrc
echo 'alias tmuxk="tmux kill-session -t "\n' >> ~/.zshrc
echo 'alias tmuxd="tmux detach "\n' >> ~/.zshrc
echo 'alias weather="curl wttr.in/st-paul"\n' >> ~/.zshrc
echo 'alias weather="curl parrot.live"\n' >> ~/.zshrc
echo 'alias ipsum="curl loripsum.net/api/3/plaintext"\n' >> ~/.zshrc
echo "alias cam='() { open https://jira.cox.com/browse/CAM-"$@" ;}'\n\n" >> ~/.zshrc
source ~/.zshrc

# install tmux and configure
sudo apt install tmux -y
touch ~/.tmux.conf
echo "set -g mouse on\n" >> ~/.tmux.conf
echo "bind - split-window -v\n" >> ~/.tmux.conf
echo "bind | split-window -h\n\n" >> ~/.tmux.conf
echo "bind -r h select-pane -L\n" >> ~/.tmux.conf
echo "bind -r j select-pane -D\n" >> ~/.tmux.conf
echo "bind -r k select-pane -U\n" >> ~/.tmux.conf
echo "bind -r l select-pane -R\n\n" >> ~/.tmux.conf
echo "bind -r H resize-pane -L 5\n" >> ~/.tmux.conf
echo "bind -r J resize-pane -D 5\n" >> ~/.tmux.conf
echo "bind -r K resize-pane -U 5\n" >> ~/.tmux.conf
echo "bind -r L resize-pane -R 5\n" >> ~/.tmux.conf
tmux source ~/.tmux.conf

# install other beloved terminal tools
sudo apt install ripgrep fd-find -y
brew install gh

# install lunarvim prerequisites
sudo apt install python3-pip -y
sudo apt update -y
sudo apt install python2 -y
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
sudo python2 get-pip.py
sudo apt update -y
sudo apt install nodejs npm -y
sudo apt install cargo -y
brew install lazygit neovim
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
source ~/.profile

# install lunarvim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh) -y
echo 'export PATH=/home/bykimthompson/.local/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

# configure lunarvim
cp ~/.local/share/lunarvim/lvim/utils/installer/config.example.lua ~/.config/lvim/config.lua

echo '-- my custom stuff\n' >> ~/.config/lvim/config.lua
echo 'lvim.colorscheme = "tokyonight"\n' >> ~/.config/lvim/config.lua

tee -a ~/.config/lvim/config.lua << END
  lvim.plugins = {
    {
      "folke/tokyonight.nvim",
      config = function()
        require("tokyonight").setup {
          style = "night",
          transparent = true,
        }
      end,
    },
    {
      "max397574/better-escape.nvim",
      config = function()
        require("better_escape").setup {
          mapping = { "jk", "jj" },
          timeout = vim.o.timeoutlen,
          clear_empty_lines = false,
          keys = "<Esc>",
        }
      end,
    },
    { "tpope/vim-surround" },
  }
END

tee -a ~/.config/lvim/config.lua << END
  lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
  lvim.keys.insert_mode["<A-j>"] = false
  lvim.keys.insert_mode["<A-k>"] = false
  lvim.keys.normal_mode["<A-j>"] = false
  lvim.keys.normal_mode["<A-k>"] = false
  lvim.keys.visual_block_mode["<A-j>"] = false
  lvim.keys.visual_block_mode["<A-k>"] = false
  lvim.keys.visual_block_mode["J"] = false
  lvim.keys.visual_block_mode["K"] = false
END

lvim +LvimUpdate +q
