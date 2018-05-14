#!/bin/bash
sudo cp *.rc /usr/local/bin/UserScripts
sudo cat loadScripts.sh >> ~/.bashrc
. ~/.bashrc
