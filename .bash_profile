eval "$(rbenv init -)"

alias alias-edit="code ~/.bash_profile"
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
alias exgrep="grep -R --exclude-dir={node_modules,build,.git} "

export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

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

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
