# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kthompson/.oh-my-zsh"

# rbenv told me to add this when upgrading via homebrew
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dieter"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git, vscode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
else
export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# My Stuff
eval "$(rbenv init -)"
eval "$(nodenv init -)"

alias alias-edit="vi ~/.bash_profile"
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

function settitle {
    SPACE=' '
    export PS1="$1${SPACE}?${SPACE}"
    echo -ne "\e]0;$1\a"
}

set keymap vi
