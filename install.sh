#!/bin/bash
sudo mkdir /usr/local/bin/UserScripts
sudo cp *.rc /usr/local/bin/UserScripts
sudo cat .bashrc >> ~/.bashrc
sudo cat .bash_profile >> ~/.bash_profile
. ~/.bash_profile
. ~/.bashrc
