#
# ~/.bashrc
#

neofetch --source ~/.config/neofetch/brand.txt

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

source ~/.aliases
source ~/.aphrodite.theme.sh
export EDITOR=vim
export PATH=${PWD}/bin:$PATH
export PATH=~/.config/bin:$PATH
export PATH="/usr/lib/llvm15/bin:$PATH"

eval "$(starship init bash)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
