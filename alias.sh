#/usr/bin/env bash

# Nixed
alias nixed="cd $NIXED"
alias startq="startx /usr/bin/env qtile start -c $DOTFILES/qtile/config.py"

# Advance option for UNIX tools
alias cp="cp -ivr"
alias mv="mv -iv"
alias bash="bash -o vi"
alias cal="cal -y"
alias grep="grep -i"
alias mkdir="mkdir -vp"
alias xclip="xclip -selection clipboard"
# alias tree="find . | sed -e 's/[^-][^\/]*\// |/g' -e 's/|\([^ ]\)/|-\1/'"
alias ls="ls -A --color=always --group-directories-first"
# alias tree="exa --tree --icons --group-directories-first"
alias cat="bat --decorations never --paging never"
# Move trash in Trash bin instead of deleting it forever
alias rm="trash-put"
alias top="btm"
alias ..="cd .."
# alias xclip="kitty +kitten clipboard"

# curl
# Speedtest
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -"
# Weather
alias wttr="curl wttr.in"

alias gcc="/nix/store/pja9g36cy32z3d51942jqk91a6l2d5nv-gcc-wrapper-10.3.0/bin/gcc"
alias g++="/nix/store/pja9g36cy32z3d51942jqk91a6l2d5nv-gcc-wrapper-10.3.0/bin/g++"

# Edit files
alias note="vi ~/Documents/notes/README.md"
alias todo="vi ~/Documents/notes/Todo.md"

# Applications
# alias vim="nvim"
# alias vi="nvim"
# alias vimdiff="nvim -d"

# Kitty
# icat shows image in kitty terminal
alias icat="kitty +kitten icat"
# Select theme from online in kitty terminal
alias theme="kitty +kitten themes"
# Select emoji in kitty terminal
alias emoji="kitty +kitten unicode_input --emoji-variation=graphic"
