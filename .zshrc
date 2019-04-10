# Path to your oh-my-zsh installation.
  export ZSH=/home/simonm/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git taskwarrior web-search chucknorris docker jsontools zsh-autosuggestions zsh-syntax-highlighting)

# User configuration

 export PATH="/home/simonm/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/simonm/go/go1.6/bin:/home/simonm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# virtualenv wrapper
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

ZLE_RPROMPT_INDENT=0

# git prompt
#PROMPT='%B%m%~%b$(git_super_status) %# '

source /home/simonm/github.com/zsh-git-prompt/zshrc.sh
GIT_PROMPT_EXECUTABLE="haskell"

PROMPT='%n@%m:%1/%# '
RPROMPT='$(git_super_status)'

ZSH_THEME="agnoster"

# -------------------------------------------------------------------
# # Git aliases
# # -------------------------------------------------------------------
#  
# alias ga='git add -A'
# alias gp='git push'
# alias gl='git log'
# alias gs='git status'
# alias gd='git diff'
# alias gm='git commit -m'
# alias gma='git commit -am'
# alias gb='git branch'
# alias gc='git checkout'
# alias gra='git remote add'
# alias grr='git remote rm'
# alias gpu='git pull'
# alias gcl='git clone'
# alias gta='git tag -a -m'
# alias gf='git reflog'
#  
# #l everage an alias from the ~/.gitconfig
# alias gh='git hist'
# alias glg1='git lg1'
# alias glg2='git lg2'
# alias glg='git lg'


# LANG problemi
export LANG=en_US.UTF-8

export GOPATH=$HOME
export GOROOT=$HOME/go/go1.6
export PATH=$PATH:$GOROOT/bin                                 

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=blue"

bindkey "^[[D" backward-word
bindkey "^[[C" forward-word

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# clipboard - pipeas sm not karkol te zanima
 alias xclip="xclip -selection c"

function grumpy() {
    git remote update
    git merge --ff upstream/$(git rev-parse --abbrev-ref HEAD)
}

function fcd() {
    export name=$1
    local FILE=$( find -name "$name*" | head -n1 2> /dev/null )
    cd "$(dirname ${FILE})"
}

