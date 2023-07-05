#!/usr/bin/env bash

# Sourcing files
export shell_location=$DOTFILES/shell
source $shell_location/export.sh
source $shell_location/alias.sh

# Start Qtile from startx
# Start Window Manger if you are on tty1
# if [ -z "$(tty)" ] && [ "/dev/tty1" ]; then
#    pgrep qtile || startq
# fi

# To initialize zoxide
# eval $(zoxide init bash)
# alias cd="z"
