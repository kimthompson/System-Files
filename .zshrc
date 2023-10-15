# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gozilla"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
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
#
export PATH=/home/kim/.local/bin:$PATH
alias nr='npm run'
alias brew-audit='brew leaves --installed-on-request | xargs -1 brew desc --eval-all'
alias vim='nvim'
alias ipsum='curl loripsum.net/api/3/plaintext'
alias to-records='cd /Users/kimtho/Desktop/Working'
alias git-nope='git reset --hard'
alias git-branch='git branch --show-current | cat'
alias git-set='git push --set-upstream origin $(git-branch)'
alias tmuxn='tmux new -s '
alias tmuxa='tmux attach -t '
alias tmuxk='tmux kill-session -t '
alias tmuxd='tmux detach '
alias me='jira issue list -a$(jira me) | cat'
alias me-next='jira issue list -a$(jira me) -sOpen -sScheduled | cat'
alias me-now='jira issue list -a$(jira me) -s"Dev In Progress" | cat'
alias me-review='jira issue list -a$(jira me) -s"Preparing for QA" -s"Ready for QA" -s"QA in Progress" | cat'
alias me-done='jira issue list -a$(jira me) -sClosed | cat'
alias lb='() { jira issue view --comments 10 LB-"$@" ;}'
alias sp='() { jira issue view --comments 10 SP-"$@" ;}'
alias pe='() { jira issue view --comments 10 PE-"$@" ;}'
alias lbo='() { jira open LB-"$@" ;}'
alias spo='() { jira open SP-"$@" ;}'
alias peo='() { jira open PE-"$@" ;}'
alias ios-version='appcenter build branches show --app Anderson-Trucking-Service/ATSCLB-QA --branch develop | grep -o -m 1 "[0-9][0-9][0-9]"'
alias android-version='appcenter build branches show --app Anderson-Trucking-Service/ATSCLB-QA-1 --branch develop | grep -o -m 1 "[0-9][0-9][0-9]"'
alias build-status='echo -e "\e[95miOS build #$(ios-version) \e[49m@ \e[93m$(getLastBuilt)"'
alias build-status-android='echo -e "\e[95mAndroid build #$(android-version) \e[49m@ \e[93m$(getLastBuilt android)"'
alias derived='rm -rf ~/Library/Developer/Xcode/DerivedData'
alias run-on-my-phone='npx react-native run-ios --scheme "ATSCLBDev" --device "Kim iPhone 13 mini"'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - )"

export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export ANDROID_HOME=~/Library/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home

getLastBuiltByNumber() {
  if [ "$2" = "android" ]; then
    appcenter build logs --app Anderson-Trucking-Service/ATSCLB-QA-1 -i "$1" | head -c28 | gdate -f -
  else
    appcenter build logs --app Anderson-Trucking-Service/ATSCLB-QA -i "$1" | head -c28 | gdate -f -
  fi
}

getLastBuilt() {
  if [ "$1" = "android" ]; then
    appcenter build logs --app Anderson-Trucking-Service/ATSCLB-QA-1 -i $(android-version) | head -c28 | gdate -f -
  else
    appcenter build logs --app Anderson-Trucking-Service/ATSCLB-QA -i $(ios-version) | head -c28 | gdate -f -
  fi
}

addBuildCommentToIssue() {
  # jira issue comment add "$1" "[~samstan:6331e5c9748d1bfcb85913be] should be in qa $(ios-version)"
  # jira issue comment add "$1" "[~samstan] should be in qa $(ios-version)"
  # jira issue comment add "$1" "[~6331e5c9748d1bfcb85913be] should be in qa $(ios-version)"
  # jira issue comment add "$1" "[~accountId:6331e5c9748d1bfcb85913be] should be in qa $(ios-version)"
  # jira issue comment add "$1" "[~accountid:6331e5c9748d1bfcb85913be] should be in qa $(ios-version)"
  # jira issue comment add "$1" "[~samsta] Can be found in qa $(ios-version)"
  jira issue comment add "$1" "[~samsta:6331e5c9748d1bfcb85913be] Can be found in QA #$(ios-version)"
  # jira issue comment add "$1" "<span aria-expanded=\"false\" aria-haspopup=\"true\" role=\"button\" tabindex=\"0\"><span data-mention-id=\"6331e5c9748d1bfcb85913be\" data-access-level=\"\" spellcheck=\"false\"><span spellcheck=\"false\" class=\"css-8790ld\">@Sam Stanton</span></span></span>Can be found in qa $(ios-version)"
}

convertToMp4() {
  ffmpeg -i "$1" -c:v libx264 -c:a aac -strict experimental -b:a 192k "$2"
}
export PATH=$PATH:$HOME/.maestro/bin
