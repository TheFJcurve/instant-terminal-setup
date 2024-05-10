#!/bin/bash

scp .aliases  ~/.aliases

if [[ "$OSTYPE" =~ ^darwin ]]; then
    scp .bash_profile ~/.zshrc
    scp .aphrodite.zsh-theme ~/.aphrodite.theme.sh
    source ~/.zshrc
else
    scp .bash_profile ~/.
    scp .aphrodite.theme.sh ~/.aphrodite.theme.sh
    source ~/.bash_profile
fi

mkdir -p ~/.ssh 
CONFIG_FILE=~/.ssh/config
touch ${CONFIG_FILE}
echo "Host ss2bhatt" > ${CONFIG_FILE}
echo "Hostname ubuntu2204-004.student.cs.uwaterloo.ca" >> ${CONFIG_FILE}
echo "User ss2bhatt" >> ${CONFIG_FILE}
