# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="hanno"
#ZSH_THEME="fishy"

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
ZSH_CUSTOM=~/dotfiles/zsh_custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast brew)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/opt/X11/bin"
export PATH="$HOME/localinstalls/bin":$PATH
export PATH="/Library/TeX/texbin/":$PATH

export PIP_REQUIRE_VIRTUALENV=true
export EDITOR=vim
export DISABLE_UNTRACKED_FILES_DIRTY=true
export VIRTUAL_ENV_DISABLE_PROMPT=1
export KEYTIMEOUT=1
export PDSH_RCMD_TYPE=ssh
export REB_DIR="$HOME/git/rebound"

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source $HOME/dotfiles/virtualenv-auto-activate.sh
setopt no_share_history
cd "$(<~/.lastdirectory)"
export PROMPT_COMMAND='printf %s "$PWD" > ~/.lastdirectory'
prmptcmd() { eval "$PROMPT_COMMAND" }
precmd_functions=(prmptcmd)

if [ "$EUID" -eq 0 ]
  then export PROMPT="%{$fg_bold[red]%}%n@%m:%{$fg[cyan]%}%~ ${ret_status}%{$reset_color%}"
fi
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias kalc='clear && kalc -s -m'
alias vi='vim'
alias c='clear'
alias m='make -j'
alias nb='jupyter notebook --no-browser'

bindkey '^[begin' beginning-of-line
bindkey '^[end' end-of-line
