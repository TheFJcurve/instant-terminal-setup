#!/bin/bash

scp .aliases  ~/.aliases

case "$OSTYPE" in
  darwin*)  scp .bashrc ~/.zshrc && scp .aphrodite.zsh-theme ~/.aphrodite.theme.sh ;; 
  *) scp .bashrc ~/.bashrc && scp .aphrodite.theme.sh ~/.aphrodite.theme.sh ;; 
esac

mkdir -p ~/.ssh 
CONFIG_FILE=~/.ssh/config
touch ${CONFIG_FILE}
echo "Host ss2bhatt" > ${CONFIG_FILE}
echo "Hostname ubuntu.student.cs.uwaterloo.ca" >> ${CONFIG_FILE}
echo "User ss2bhatt" >> ${CONFIG_FILE}
