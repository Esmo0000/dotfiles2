#!/usr/bin/env fish

# Plugin
fundle plugin 'edc/bass' # Support bash script
fundle plugin 'kidonng/zoxide.fish' # Support smart cd
fundle plugin 'mattgreen/lucid.fish' # fish theme
fundle init

bass source $DOTFILES/shell/profile.sh
alias cd="z"

# Disable welcome message
set fish_greeting

# Enable fish VI mode
fish_vi_key_bindings

# Start Window Manger if you are on tty1
if [ (tty) = "/dev/tty1" ]
    pgrep qtile || startq
end

# Remember recent directory
set -q fish_most_recent_dir && [ -d "$fish_most_recent_dir" ] && cd "$fish_most_recent_dir"

function save_dir --on-variable PWD
    set -U fish_most_recent_dir $PWD
end
