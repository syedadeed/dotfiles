[[ -f ~/.bashrc ]] && . ~/.bashrc

export GOPATH=$HOME/.go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts
if [[ $(tty) == /dev/tty1 ]]; then
    start-hyprland
fi
