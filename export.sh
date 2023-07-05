#!/usr/bin/env bash

# XDG base directory
# More info on --> https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_CACHE_HOME=~/.cache
export XDG_CONFIG_HOME=~/.config
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state
export XDG_BIN_HOME=$DOTFILES/bin

export XDG_DOCUMENTS_DIR=~/Documents
export XDG_PICTURES_DIR=~/Pictures
export XDG_VIDEOS_DIR=~/Videos
export XDG_MUSIC_DIR=~/Music
export XDG_DESKTOP_DIR=~/Desktop
export XDG_DOWNLOAD_DIR=~/Downloads
export XDG_PUBLICSHARE_DIR=~/Public
export XDG_TEMPLATES_DIR=~/Templates

# X11
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
export XSERVERRC=$XDG_CONFIG_HOME/X11/xserverrc
export XCOMPOSEFILE=$XDG_CONFIG_HOME/X11/xcompose
export XCOMPOSECACHE=$XDG_CACHE_HOME/X11/xcompose
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority

# Dotfiles
export GTK_RC_FILES=$XDG_CONFIG_HOME/gtk-1.0/gtkrc
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export DENO_INSTALL=$XDG_CONFIG_HOME/deno
export DENO_INSTALL_ROOT=$DENO_INSTALL
export GNUPGHOME=$XDG_CONFIG_HOME/gnupg
export HISTFILE=$XDG_CACHE_HOME/bash-history
export NODE_REPL_HISTORY=$XDG_CACHE_HOME/node_repl_history
export COMPOSER_CACHE_DIR=$XDG_CACHE_HOME/composer
export VIMINIT='let $MYVIMRC="$DOTFILES/vim/init.lua" | source $MYVIMRC'
export KITTY_CONFIG_DIRECTORY=$DOTFILES/kitty
export XONSH_TRACEBACK_LOGFILE=$XDG_DATA_HOME/xonsh/log
# export WAKATIME_HOME=$XDG_CONFIG_HOME/wakatime

# Path
export PATH=$PATH:$DOTFILES/bin:$DENO_INSTALL_ROOT/bin:~/.local/bin

# Applications
export CM_LAUNCHER=fzf
export XONSH_SHOW_TRACEBACK=True
