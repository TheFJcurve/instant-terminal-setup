#!/bin/bash

scp .aliases  ~/.aliases

if [[ "$OSTYPE" =~ ^darwin ]]; then
    scp .bashrc ~/.zshrc
    scp .aphrodite.zsh-theme ~/.aphrodite.theme.sh
    source ~/.zshrc
else
    scp .bashrc ~/.
    scp .aphrodite.theme.sh ~/.aphrodite.theme.sh
    source ~/.bashrc
fi

mkdir -p ~/.ssh 
CONFIG_FILE=~/.ssh/config
touch ${CONFIG_FILE}
echo "Host ss2bhatt" > ${CONFIG_FILE}
echo "Hostname ubuntu2204-004.student.cs.uwaterloo.ca" >> ${CONFIG_FILE}
echo "User ss2bhatt" >> ${CONFIG_FILE}
