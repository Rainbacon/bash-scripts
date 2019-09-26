#!/bin/bash
echo "--------------------------------------"
echo "Moving scripts to userscripts directory"
echo "--------------------------------------"
sudo mkdir /usr/local/bin/UserScripts
sudo cp *.rc /usr/local/bin/UserScripts
echo "--------------------------------------"
echo "Downloading standard tools"
echo "--------------------------------------"
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
echo "--------------------------------------"
echo "Updating bashrc"
echo "--------------------------------------"
sudo cat .bashrc >> ~/.bashrc
sudo cat .bash_profile >> ~/.bash_profile
. ~/.bash_profile
. ~/.bashrc
