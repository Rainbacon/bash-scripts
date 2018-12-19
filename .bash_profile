source ~/.bashrc
export PS1="\d \@: \e[0;36m\w\e[m \[\033[33;1m\](\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))\[\033[m\] \$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH="/usr/local/opt/libpq/bin:$PATH"
