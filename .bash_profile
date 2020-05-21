eval "$(rbenv init -)"
eval "$(nodenv init -)"

alias alias-edit="nvim ~/.bash_profile"
alias be="bundle exec "
alias git-branch="git branch --list -a"
alias git-pretty="git log --pretty=oneline --graph --decorate --all"
alias git-skinny="git log --pretty=oneline --abbrev-commit"
alias git-master="git fetch origin; git pull origin master"
alias git-set="git push --set-upstream origin "
alias to-journal="cd ~/Git/Personal/Journal"
alias nr="npm run "
alias red="redmine "
alias red-shirk="redmine update-issue -a ' ' "
alias red-me="redmine issues --me"
alias red-assign-me="redmine update-issue -a 'Kim Thompson'"
alias exgrep="grep -R --exclude-dir={node_modules,build,.git,dist,.next,tmp,log} "
alias ssh-news="ssh mprnews@hqwebnodeappdev01.mpr.org"
alias ssh-podcasts="ssh apmpodcasts@hqwebnodeappdev01.mpr.org"
alias edit-browsh="vim '~/Library/Application Support/browsh/config.toml'"
alias zlack="python3 ~/Git/zarf-slack-cli/zlack.py --clientid 2535248609.928797495507 --clientsecret afa0e034cfd47a8a12ca951d5acd94e9"
alias neovim-config="nvim ~/.config/nvim/init.vim"
alias weather="curl wttr.in/st-paul"
alias parrot="curl parrot.live"
alias lorem="curl loripsum.net/api/3/plaintext"

export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

function start_proxy {
    cd ~/Git/Sites/cmsproxy
    rails s -p 5000 -d
    PID="$(cat /Users/kthompson/Git/Sites/cmsproxy/tmp/pids/server.pid)"
    echo "Server started with process id ${PID}"
    cd -
}

function stop_proxy {
    PID="$(cat /Users/kthompson/Git/Sites/cmsproxy/tmp/pids/server.pid)"
    kill "${PID}"
    echo "Server running with process id ${PID} stopped"
}

function cdls() {
    cd "$@" && ls;
}

function settitle() {
    export PS1="\[\e[32m\]\u@\h \{\e[33m\]\w\[\e[0m\]\n$ "
    echo -ne "\e]0;$1\a"
}

set keymap vi
