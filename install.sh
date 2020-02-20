#!/bin/bash
echo "--------------------------------------"
echo "Moving scripts to userscripts directory"
echo "--------------------------------------"
sudo mkdir /usr/local/bin/UserScripts
sudo cp functions/*.rc /usr/local/bin/UserScripts
sudo cp local/*.rc /usr/local/bin/UserScripts
sudo cp scripts/*.sh /usr/local/bin/UserScripts
echo "--------------------------------------"
echo "Downloading standard tools"
echo "--------------------------------------"
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
echo "--------------------------------------"
echo "Updating bashrc"
echo "--------------------------------------"
sudo cat dotfiles/.bashrc >> ~/.bashrc
sudo cat dotfiles/.bash_profile >> ~/.bash_profile
. ~/.bash_profile
. ~/.bashrc
