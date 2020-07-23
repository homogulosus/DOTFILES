#######################################################
############ ZSHRC CONFIGURATION FILE #################
#######################################################

export ZSH="/Users/r/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
  _comp_options+=(globdots)
fi

# CASE_SENSITIVE="true"

# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"

# DISABLE_UPDATE_PROMPT="true"

export UPDATE_ZSH_DAYS=7

# DISABLE_MAGIC_FUNCTIONS=true

# DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(direnv zsh-interactive-cd forgit web-search)
# plugin graveyard vi-mode

source $ZSH/oh-my-zsh.sh

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Vi mode
bindkey -v
export KEYTIMEOUT=1

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Loads other files as if they where here
for file in ~/.{aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

# python enviroment
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# fzf fuzzy finder. Cool feature
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Direnv hooked
eval "$(direnv hook zsh)"

# z.lua
eval "$(lua ~/Plugins/z.lua/z.lua --init zsh)"

# Date
echo "Today is: $(date)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

setopt extended_glob
bindkey " " magic-space

# Whitout this line vim does not have colors using tmux
export TERM=xterm-256color
