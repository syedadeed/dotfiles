#!/bin/bash

rm "$HOME/.bash_profile"
rm "$HOME/.bashrc"

ln -s "$HOME/dotfiles/bash_profile" "$HOME/.bash_profile"
ln -s "$HOME/dotfiles/bashrc" "$HOME/.bashrc"
ln -s "$HOME/dotfiles/fonts" "$HOME/.local/share/fonts"
ln -s "$HOME/dotfiles/gitconfig" "$HOME/.gitconfig"

mkdir -p "$HOME/.config"

ln -s "$HOME/dotfiles/gtk-3.0" "$HOME/.config/gtk-3.0"
ln -s "$HOME/dotfiles/dconf" "$HOME/.config/dconf"
ln -s "$HOME/dotfiles/hypr" "$HOME/.config/hypr"
ln -s "$HOME/dotfiles/kitty" "$HOME/.config/kitty"
ln -s "$HOME/dotfiles/nvim" "$HOME/.config/nvim"
ln -s "$HOME/dotfiles/xremap" "$HOME/.config/xremap"

mkdir -p "$HOME/.config/libvirt"
ln -s "$HOME/dotfiles/libvirt/libvirt.conf" "$HOME/.config/libvirt/libvirt.conf"
