# Minimum setup

These are the files I need to get going in any debian environment. My workflow consists of NeoVim, Tmux, and Zsh. If I have these, I have all I need. I wanted to create some sort of startup script that would run these processes automatically, but I'll start by just outlining what I need to do each time here:

1. Update `apt` and upgrade all of your existing packages:

`sudo apt update && sudo apt upgrade`

2. Install the following packages with `apt`:

  * `fd-find`
  * `ripgrep`
  * `zsh`
  * `curl`
  * `git`
  * `neovim`

3. Run the following script to link `apt` to a more recent version of `node`

`curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -`

4. Install `node` and `npm` with `apt`

`sudo apt install node npm`

5. Run the following script to set up `oh-my-zsh`

`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

6. Copy the following files to their new homes at the root level of your system, `~`

`cp ./{.tmux.conf,.zshrc-example} ~`
`cp ./.config/nvim/init.vim ~/.config/nvim`

7. Manually compare your existing `.zshrc` to the `.zshrc-example` you just copied over. You want to bring over your theme, scripts and aliases, but not overwrite the ZSH home directory they automatically set up. Restart the shell to see changes.

8. Install the Vim-plug Plugin Manager

`curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

9. Install your NeoVim configs by opening your config file in NeoVim and running `:PlugInstall` within the editor:

`nvim ~/.config/nvim/init.vim`
`:PlugInstall`

10. Restart NeoVim to see your changes. In fact, start up a Tmux session to see that working with all my keymaps, then upen up NeoVim to see PaperColor and regain my beloved `jk` mapping. You should be done!
