export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/sbin:$PATH"
# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
# NPM
export PATH="/usr/local/Cellar/node/14.4.0/bin:$PATH"
# Cargo Rust Package Manager
export PATH="$HOME/.cargo/bin:$PATH"
# fzf Options
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse'
# fzf show hidden files
export FZF_DEFAULT_COMMAND="find . -path '*/\.*' -type d -prune -o -type f -print -o -type l -print 2> /dev/null | sed s/^..//"
