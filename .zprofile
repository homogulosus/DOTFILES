# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/sbin:$PATH"
# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
# NPM
export PATH="/usr/local/Cellar/node/14.5.0/bin:$PATH"
# GO
export PATH="$HOME/go/bin:$PATH"
# Cargo Rust Package Manager
export PATH="$HOME/.cargo/bin:$PATH"
# fzf Options
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --ansi'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# fzf show hidden files
export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git --exclude .DS_Store --color=always'
# man pages open in nvim
export MANPAGER="nvim +Man! -c ':set signcolumn='"
# GPG
export GPG_TTY=$(tty)
# clangd
# export PATH="/usr/local/opt/llvm/bin:$PATH"
export C_INCLUDE_PATH='/usr/local/include'
