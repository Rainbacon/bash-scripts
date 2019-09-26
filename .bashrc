export PS1="\e[0;32m\d \@:\e[m \e[0;36m\w\e[m \[\033[33;1m\](\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))\[\033[m\] \$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
for script in /usr/local/bin/UserScripts/*.rc
do
    . "$script"
done
function quiet(){
  eval "$(ssh-agent -s)"
  for key in ~/.ssh/*_rsa
  do
    ssh-add "$key"
  done
}
test -f ~/.git-completion.bash && . $_
