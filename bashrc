PS1='(\u@\h \W)\$ '

export EDITOR="nvim"
export HISTCONTROL="ignoredups:erasedups"

alias b='bluetoothctl'
alias sr='systemctl soft-reboot'
alias u='sudo pacman -Syyu'
alias bd='cd "$OLDPWD"'
alias cn='bluetoothctl connect D4:CD:DA:35:A5:E9'
alias cp='cp -ir'
alias grep='grep --color=auto'
alias l='ls -A'
alias ll='ls -lAh'
alias ls='ls --color=auto --hyperlink=auto'
alias mkdir='mkdir -p'
alias mv='mv -i'
alias pg='ping google.com -c3'
alias pi='kitty +kitten icat'
alias rd='rm -rf'
alias sl='sudo btrfs subvolume list -ta'
alias v='nvim'

force-clear () 
{ 
    printf "\e[H\e[3J"
}

eval "$(fzf --bash)"

bind -x '"\C-x":"force-clear"'
bind "set completion-ignore-case on"