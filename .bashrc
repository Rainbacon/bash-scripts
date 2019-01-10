export PS1="\d \@: \e[0;36m\w\e[m \[\033[33;1m\](\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))\[\033[m\] \$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
for script in /usr/local/bin/UserScripts/*.rc
do
    . "$script"
done
alias party='cd ~/Code/bash-scripts'
function quiet(){
  eval "$(ssh-agent -s)"
  ssh-add -K ~/.ssh/ghe_id_rsa
}

